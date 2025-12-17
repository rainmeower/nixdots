{
  flake_dir,
  p,
  host,
  wm,
  userDirs,
  prompt_sym,
  ...
}: let
  wm_launch_command =
    if wm == "hyprland" then "Hyprland"
    else if wm == "niri" then "niri-session"
    else if wm == "mango" then "uwsm start mango-uwsm.desktop"
    else "echo 'cannot launch wm: config.wm is set incorrectly'";
in {
  programs.nushell = {
    enable = true;

    configFile.text =  # {{{
      /* nu */ ''
      # FIXME
      # def po [] {
      #   niri msg action switch-preset-window-width
      #   niri msg action toggle-column-tabbed-display
      #   let dir = pwd
      #   niri msg action spawn -- kitty -1 cd $dir -- &
      #   nvim . -- &
      #   sleep 0.1sec
      #   niri msg action consume-or-expel-window-left
      # }

      # git open
      def go [] {
        git remote get-url origin | sed -e 's/git@/https:\/\//' -e 's/:/\//' -e 's/:/\//' -e 's/\//:/' -e 's/\.git//' | xargs xdg-open
      }

      # git add commit push
      def gacp [] {
        git add --all
        git commit -m "meow"
        git push
      }
      # git log
      def gl [] {
        let selection = (git log --oneline | lines | fzf)
        let hash = ($selection | split row " " | get 0)
        wl-copy $hash
      }
      # git reflog
      def grl [] {
        let selection = (git reflog | lines | fzf)
        let hash = ($selection | split row " " | get 0)
        wl-copy $hash
      }

      # recently downloaded
      def rd [] {
        let f = ^ls ~/dl -At | head -n 1
        yazi ${userDirs.download}/($f)
      }


      def hist [] {
        let selected = (history | reverse | get command | uniq | fzf)
        if ($selected | is-empty) == false {
          do $selected
        }
        # echo "use <C-r>"
      }

      def record [] { # simple screen record without obs
        cd ${userDirs.videos}
        let date = date now | format date "%Y-%m-%d %H:%M:%S"
        wf-recorder -r 60 -o DP-1 -f $"(date now | format date '%Y-%m-%d %H:%M:%S').mkv"
      }

      def recordsmall [] { # simple screen record without obs
        # TODO wf-recorder -g
      }

      # convert .mp4 file to .mov for davinci resolve
      def movify [msg: string] {
          let input = $msg
          let base = (echo $msg | path parse | get stem)
          let output = ($base | str join "") + ".mov"
          ^ffmpeg -i $input -c:v dnxhd -profile:v dnxhr_hq -c:a pcm_s16le -pix_fmt yuv422p $output
      }

      def , [msg: string] {
        nix run nixpkgs#($msg)
      }

      def ,, [msg: string] {
        nix-shell -p ($msg)
      }


      # bookmark open
      def bo [...msg: string] {
        # TODO auto open if only one line
        bmm search ...$msg | fzf | xargs xdg-open
      }


      def nr [...msg: string] {
        # sudo nixos-rebuild switch --flake ${flake_dir}#nixos
        cd ${flake_dir}
        git add -A
        sudo nh os switch -R ${flake_dir} -H ${host}
        let timestamp = (date now | format date '%d/%m %H:%M:%S')
        let full_msg = if ($msg | is-empty) {
          $timestamp
        } else {
          $"($timestamp) ($msg | str join ' ')"
        }
        git commit -m $full_msg
      }


      # nix flake git commit
      def ngc [...msg: string] {
        cd ${flake_dir}
        git add .
        let timestamp = (date now | format date '%d/%m %H:%M:%S')
        let full_msg = if ($msg | is-empty) {
          $timestamp
        } else {
          $"($timestamp) ($msg | str join ' ')"
        }
        git commit -m $full_msg
      }

      # nix flake git commit amend
      def nga [...msg: string] {
        cd ${flake_dir}
        git add .
        let timestamp = (date now | format date '%d/%m %H:%M:%S')
        let full_msg = if ($msg | is-empty) {
          $timestamp
        } else {
          $"($timestamp) ($msg | str join ' ')"
        }
        git commit --amend -m $full_msg
      }

      def gcm [...msg: string] {
        git commit -m $msg
      }

      def timer [...msg: string] {
        let full_msg = ($msg | str join " ") + "m"
        nix run nixpkgs#termdown -s $full_msg
        notify-send -t 10000 timer up
      }

      # search for process
      def lsproc [msg: string] {
      ps | where name =~ $"($msg)"
      }

      # copy path
      def ww [] {
        pwd | str trim | wl-copy
        echo $"copied (pwd)"
      }

      # copy file path
      def wf [msg: string] {
        realpath $msg | str trim | wl-copy
        let path = realpath $msg
        echo $"copied ($path)"
      }

      # copy pwd relative to git root
      def wg [] {
        let root = (git rev-parse --show-toplevel | str trim)
        let rel = (realpath . | path relative-to $root)
        $rel | wl-copy
        echo $"copied ($rel)"
      }

      # copy file path relative to git root
      def wgf [msg: string] {
        let root = (git rev-parse --show-toplevel | str trim)
        let rel = (realpath . | path relative-to $root)
        let path = $"($rel)/($msg)"
        wl-copy $path
        echo $"copied ($path)"
      }

      # goto git root
      # FIXME
      def gr [] {
        cd (git rev-parse --show-toplevel)
      }


      #  clear clipboard
      def cl [] {
        ${flake_dir}/stuff/scripts/clear.sh
      }


      # $env.path ++= ["/xyz/meow"]

      $env.config.edit_mode = 'vi'
      $env.config = {
          cursor_shape: {
              emacs: line
              vi_insert: line
              vi_normal: block
          }
          
          # buffer_editor: ["nvim", "-c", "':se nonu'", "--"]

          show_banner: false
          table: {
              mode: none
              index_mode: never
          }

          keybindings: [
          {
              name: ctrlu
              modifier: control
              keycode: char_u
              mode: vi_insert
              event: { edit: CutFromLineStart }
          }
          { # FIXME
              name: copycommand
              modifier: control
              keycode: char_y
              mode: vi_insert
              event: [
              { edit: SelectAll }
              {
                edit: CopySelection
                system_clipboard: true
              }
              ]
          }
          ]
      }
      $env.PROMPT_INDICATOR = ""
      $env.PROMPT_INDICATOR_VI_NORMAL = ""
      $env.PROMPT_INDICATOR_VI_INSERT = ""
      # $env.PROMPT_MULTILINE_INDICATOR = The multi-line indicator

    ''; # }}}

   #  envFile.text = /* nu */ ''
   #  '';

    loginFile.text = /* nu */ ''
      if (tty) == "/dev/tty1" {
        ${wm_launch_command}
      }
    '';


    shellAliases = { # {{{
      ".." = "cd ..";
      "..." = "cd ../..";
      "...." = "cd ../../..";
      "....." = "cd ../../../..";
      "......" = "cd ../../../../..";
      "......." = "cd ../../../../../..";

      co = "wl-copy";

      ffmpreg = "ffmpeg";

      woman = "man";

      fuck = "sudo !!";

      celeste = "Celeste"; # goated game

      q = "exit";
      ":q" = "exit";
      ":x" = "exit";

      # k = "pkill";
      # "-" = "cd -"; # FIXME
      fg = "job unfreeze";
      jobs = "job list";

      sudo = "sudo -k"; # prompt every time
      # rm = "trash -i"; # prompt every time
      tr = "trash -i"; # prompt every time
      rm = "rm -i"; # prompt every time
      mv = "mv -i"; # prompt every time
      ln = "ln -i"; # prompt every time

      banish = "shred -u"; # shred and delete

      logout = "hyprctl dispatch exit 0";
      # l = "eza -lh  --icons=auto"; # long list
      ls = "eza -a1   --icons=auto"; # short list
      lsl = "eza -lha --icons=auto --sort=name --group-directories-first"; # long list all
      # ld = "eza -lhD --icons=auto"; # long list dirs
      # lt = "eza --icons=auto --tree"; # list folder as tree
      # ff = "fastfetch --logo nixos_small --logo-color-2 magenta";
      meowfetch = "fastfetch -l ${flake_dir}/stuff/kitty_yarn";



      ga = "git add .";
      # gl = "git log --oneline | lines | fzf";
      gcl = "git clone";
      gd = "git diff HEAD^";
      gs = "git status";
      gsw = "git switch";
      gps = "git push";
      gpl = "git pull";
      gpr = "git pull --rebase";
      gb = "git branch";

      cr = "cargo run";

      # meow = "echo :3"; # so silly

      ns = "nix-shell -p";

      n = "nvim";
      y = "yazi";

      "n," = "nvim";
      "bn" = "nvim";
      "nb" = "nvim";
      "t!ch" = "touch";
      mkidr = "mkdir";
      chomd = "chmod";
      dc = "cd";
      sl = "ls";
      igt = "git";
      gti = "git";


      # h = "!! --help";
      np = "${flake_dir}/stuff/scripts/nixpkgs.sh";

    }; # }}}

    environmentVariables = { # {{{
      MANPAGER = "nvim +Man!"; # use nvim for man
      SUDO_TIMESTAMP_TIMEOUT = 0;
      EDITOR = "nvim";
      VISUAL = "nvim";
      BROWSER = "zen";
      NIXOS_OZONE_WL = "1"; # tell things to use wayland
      NIXPKGS_ALLOW_UNFREE = "1";

      FZF_DEFAULT_OPTS = "--color=fg:${p.fg},hl:${p.accent},fg+:${p.bg},bg+:${p.accent},hl+:${p.bg},info:#ffff00,prompt:${p.accent},spinner:-1,pointer:-1,gutter:-1,info:${p.comment},border:-1 --border='none' --info='hidden' --header='' --prompt='${prompt_sym} ' --no-bold -i --pointer=''";
    }; # }}}
  };
}
