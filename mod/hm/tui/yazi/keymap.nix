{
  flake_dir,
  userDirs,
  ...
}:{
  programs.yazi = {
    keymap = {
      # mgr {{{
      mgr.keymap = [
      {
        on = [
          "g"
          "d"
          "<Space>"
        ];
        run = "plugin dupes interactive";
        desc = "Run dupes interactive";
      }

      # tags {{{
      {
        on = [ "g" "t" "t" ];
        run = "plugin simple-tag -- toggle-tag";
      }
      {
        on = [ "g" "t" "a" ];
        run = "plugin simple-tag -- add-tag";
      }
      {
        on = [ "g" "t" "u" ];
        run = "plugin simple-tag -- toggle-ui";
        desc = "Toggle tag indicator (icon > tag key > hidden)";
      }
  
      # }}}

      # {
      #   on = [ "g" "<Space>" ];
      #   run = "plugin file-actions -- --around ";
      #   desc = "perform action on selected files";
      # }
      {
        on = [ "g" "<Space>" ];
        run = "shell '${flake_dir}/stuff/rofi/s-img 1'";
        desc = "open rofi here";
      }
      {
        on = [ "g" "<S-Space>" ];
        run = "shell '${flake_dir}/stuff/rofi/s-img 10'";
        desc = "open rofi here (rec)";
      }
      {
        on = [ "g" "<Enter>" ];
        run = "plugin open-with-cmd --args=block";
        desc = "open with command";
      }
      {
        on = [ "g" "<S-Enter>" ];
        run = "plugin open-with-cmd";
        desc = "open with command";
      }

      {
        on = "<Esc>";
        run = "escape";
        desc = "Exit visual mode, clear selected; or cancel search";
      }

      { # FIXME
        on = [ "g" "r" ];
        run = "shell -- ya emit cd '$(git rev-parse --show-toplevel)'";
        desc = "go to git root";
      }

      {
        on = [ "g" "M" ];
        run = "plugin gvfs -- jump-to-device";
        desc = "Select device then jump to its mount point";
      }

      # archive {{{
# TODO compression level?
      {
        on = [ "g" "a" "<Space>" ];
        run = "plugin compress";
        desc = "Archive";
      }
      {
        on = [ "g" "a" "p" ];
        run = "plugin compress -p";
        desc = "Archive (password)";
      }
      {
        on = [ "g" "a" "P" ];
        run = "plugin compress -ph";
        desc = "Archive (pw + header)";
      }

      # }}}

      {
        on = "<C-z>";
        run = "suspend";
        desc = "Suspend the process";
      }

      {
        on = "q";
        run = "quit";
        desc = "Suspend the process";
      }

      { # quit chord
        on =[ "Z" "Z" ];
        run = "quit";
        desc = "Suspend the process";
      }

      {
        on = "<C-c>";
        run = "quit";
        desc = "Suspend the process";
      }

      {
        on = "<C-d>";
        run = "quit";
        desc = "Suspend the process";
      }

      {
        on = "f";
        run = "plugin fchar";
        desc = "jump to char";
      }

      {
        on = "<C-e>";
        run = "arrow -10";
      }
      {
        on = "<C-a>";
        run = "arrow 10";
      }

      {
        on = "<C-S-e>";
        run = "arrow -50%";
      }
      {
        on = "<C-S-a>";
        run = "arrow 50%";
      }

      {
        on = [ "g" "g" ];
        run = "arrow top";
      }
      {
        on = "G";
        run = "arrow bot";
      }

      {
        on = "h";
        run = "leave";
      }

      {
        on = "i";
        run = "enter";
      }

      {
        on = "a";
        run = "arrow next";
      }

      {
        on = "e";
        run = "arrow prev";
      }

      {
        on = "<C-c>";
        run = "back";
        desc = "Go back to the previous directory";
      }

      {
        on = "<C-t>";
        run = "forward";
        desc = "Go forward to the next directory";
      }

      # selection {{{
      {
        on = [ "g" "i" ];
        run = [ "toggle_all" ];
        desc = "Invert selection";
      }

      {
        on = "n";
        run = [ "toggle" "arrow 1" ];
        desc = "Toggle the current selection state";
      }

      {
        on = "<C-g>";
        run = "toggle_all --state=on";
        desc = "Select all files";
      }

      {
        on = "<C-r>";
        run = "toggle_all";
        desc = "Invert selection";
      }

      {
        on = "r";
        run = "visual_mode";
        desc = "visual mode";
      }

      {
        on = "R";
        run = "visual_mode --unset";
        desc = "Enter visual mode (unset mode)";
      }
      # }}}

      {
        on = "p";
        run = "plugin restore";
        desc = "restore files";
      }

# Seeking
      {
        on = "A";
        run = "seek 5";
        desc = "down in preview";
      }

      {
        on = "E";
        run = "seek -5";
        desc = "up in preview";
      }

      {
        on = "<Tab>";
        run = "spot";
        desc = "spot";
      }


      {
        on = "<Enter>";
        run = "open";
        desc = "open";
      }
      {
        on = "<S-Enter>";
        run = "open --interactive";
        desc = "open interactively";
      }

      {
        on = "y";
        run = [ "shell -- for path in \"$@\"; do echo \"file://$path\"; done | wl-copy -t text/uri-list" "yank" ];
        desc = "yank";
      }

      {
        on = "u";
        run = "yank --cut";
        desc = "cut";
      }

      {
        on = "l";
        run = "paste";
        desc = "paste";
      }

# { on = "f"         run = "paste --force";               desc = "Paste yanked files (overwrite if the destination exists)"; }

      {
        on = [ "g" "c" ];
        run = "plugin chmod";
        desc = "chmod";
      }

      {
        on = [ "g" "m" ];
        run = "plugin mount";
        desc = "mount";
      }

      {
        on = [ "g" "l" "l" ];
        run = "link";
        desc = "symlink absolute";
      }

      {
        on = [ "g" "l" "r" ];
        run = "link --relative";
        desc = "symlink relative";
      }

      {
        on = [ "g" "l" "h" ];
        run = "hardlink";
        desc = "hardlink";
      }

      {
        on = "X";
        run = "unyank";
        desc = "cancel the yank status";
      }

      {
        on = "o";
        run = "remove";
        desc = "trash selected files";
      }

      {
        on = "t";
        run = "create";
        desc = "create file";
      }

      {
        on = "s";
        run = "rename --cursor=before_ext";
        desc = "rename";
      }

      {
        on = ":";
        run = "shell --interactive";
        desc = "run shell command";
      }

# { on = ";";         run = "shell --block --interactive"; desc = "Run a shell command (block until finishes)"; }

      {
        on = ".";
        run = "hidden toggle";
        desc = "toggle hidden visibility";
      }

      {
        on = "k";
        run = "search --via=fd";
        desc = "fd";
      }

      {
        on = "K";
        run = "search --via=rg";
        desc = "ripgrep";
      }

      {
        on = "<C-s>";
        run = "escape --search";
        desc = "cancel search";
      }

      {
        on = "c";
        run = "plugin zoxide";
        desc = "zoxide";
      }

      {
        on = "C";
        run = "plugin fzf";
        desc = "fzf";
      }

      {
        on   = ["g" "s"];
        run  = "shell 'nu' --block";
        desc = "open shell here";
      }


      # linemode {{{
      {
        on = [ "m" "s" ];
        run = "linemode size";
        desc = "size";
      }

      {
        on = [ "m" "p" ];
        run = "linemode permissions";
        desc = "permissions";
      }

      {
        on = [ "m" "b" ];
        run = "linemode btime";
        desc = "btime";
      }

      {
        on = [ "m" "m" ];
        run = "linemode mtime";
        desc = "mtime";
      }

      {
        on = [ "m" "o" ];
        run = "linemode owner";
        desc = "owner";
      }

      {
        on = [ "m" "n" ];
        run = "linemode none";
        desc = "none";
      }

# }}}

      # yank {{{
      {
        on = [ "Y" "f" ];
        run = "copy path";
        desc = "Copy the file path";
      }

      {
        on = [ "Y" "d" ];
        run = "copy dirname";
        desc = "Copy the directory path";
      }

      {
        on = [ "Y" "n" ];
        run = "copy filename";
        desc = "Copy the filename";
      }

      {
        on = [ "Y" "N" ];
        run = "copy name_without_ext";
        desc = "Copy the filename without extension";
      }

      # FIXME
      # {
      #   on = [ "Y" "g" ];
      #   run = "shell -- ${flake_dir}/stuff/scripts/jg.sh";
      #   desc = "Copy file path from git root";
      # }

      # }}}

      # filter {{{
      {
        on = "/";
        run = "filter --smart";
        desc = "Filter files";
      }

      {
        on = "?";
        run = "filter --previous --smart";
        desc = "Filter files backwards";
      }

      # }}}

      # find {{{
      {
        on = "d";
        run = "find --smart";
        desc = "Find next file";
      }

      {
        on = "D";
        run = "find --previous --smart";
        desc = "Find previous file";
      }

      # {
      #   on = "m";
      #   run = "find_arrow";
      #   desc = "Goto the next found";
      # }
      #
      # {
      #   on = "M";
      #   run = "find_arrow --previous";
      #   desc = "Goto the previous found";
      # }

      # }}}

      # sort {{{
      {
        on = [ ";" "m" ];
        run = [ "sort mtime --reverse=no" "linemode mtime" ];
        desc = "mtime";
      }

      {
        on = [ ";" "M" ];
        run = [ "sort mtime --reverse" "linemode mtime" ];
        desc = "mtime (rev)";
      }

      {
        on = [ ";" "b" ];
        run = [ "sort btime --reverse=no" "linemode btime" ];
        desc = "btime";
      }

      {
        on = [ ";" "B" ];
        run = [ "sort btime --reverse" "linemode btime" ];
        desc = "btime (rev)";
      }

      {
        on = [ ";" "v" ];
        run = "sort extension --reverse=no";
        desc = "extension";
      }

      {
        on = [ ";" "V" ];
        run = "sort extension --reverse";
        desc = "extension (rev)";
      }

      {
        on = [ ";" "j" ];
        run = "sort alphabetical --reverse=no";
        desc = "alphabetical";
      }

      {
        on = [ ";" "J" ];
        run = "sort alphabetical --reverse";
        desc = "alphabetical (rev)";
      }

      {
        on = [ ";" "n" ];
        run = "sort natural --reverse=no";
        desc = "natural/none";
      }

      {
        on = [ ";" "N" ];
        run = "sort natural --reverse";
        desc = "natural (rev)";
      }

      {
        on = [ ";" "s" ];
        run = [ "sort size --reverse=no" "linemode size" ];
        desc = "size";
      }

      {
        on = [ ";" "S" ];
        run = [ "sort size --reverse" "linemode size" ];
        desc = "size (rev)";
      }

      {
        on = [ ";" "r" ];
        run = "sort random --reverse=no";
        desc = "random";
      }

    # }}}

      # boobkmarks {{{
      {
        on = [ "~" ];
        run = "cd ~";
        desc = "home";
      }

      {
        on = [ "<Space>" "<Space>" ];
        run = "cd --interactive";
        desc = "cd";
      }

      {
        on = [ "<Space>" "a" ];
        run = "cd ~/art";
        desc = "art";
      }

      {
        on = [ "<Space>" "c" ];
        run = "cd ${userDirs.extraConfig.XDG_CONFIG_HOME}";
        desc = ".config";
      }

      {
        on = [ "<Space>" "d" "a" ];
        run = "cd ~/data";
        desc = "data repo";
      }

      {
        on = [ "<Space>" "d" "o" ];
        run = "cd ${userDirs.documents}";
        desc = "documents";
      }

      {
        on = [ "<Space>" "d" "l" ];
        run = "cd ${userDirs.download}";
        desc = "downloads";
      }

      {
        on = [ "<Space>" "f" ];
        run = "cd ~/.config";
        desc = "~/.config";
      }

      {
        on = [ "<Space>" "g" "d" "s" ];
        run = "cd ~/.local/share/Steam/steamapps/compatdata/322170/pfx/drive_c/users/steamuser/AppData/Local/GeometryDash/";
        desc = "GD songs";
      }
      {
        on = [ "<Space>" "g" "d" "<Space>" ];
        run = "cd ~/.local/share/wineprefixes/default/drive_c/users/meow/AppData/Local/GeometryDash";
        desc = "GD songs";
      }

      {
        on = [ "<Space>" "g" "a" ];
        run = "cd ~/game";
        desc = "game repo";
      }

      {
        on = [ "<Space>" "g" "s" ];
        run = "cd ~/games";
        desc = "games";
      }

      {
        on = [ "<Space>" "h" "o" ];
        run = "cd ~";
        desc = "home";
      }
      {
        on = [ "<Space>" "~" ];
        run = "cd ~";
        desc = "home";
      }

      {
        on = [ "<Space>" "h" "a" ];
        run = "cd ~/hammer";
        desc = "hammer repo";
      }

      {
        on = [ "<Space>" "l" ];
        run = "cd ~/.local";
        desc = "~/.local";
      }

      {
        on = [ "<Space>" "m" "e" ];
        run = "cd ~/melee";
        desc = "melee";
      }

      {
        on = [ "<Space>" "m" "i" ];
        run = "cd ~/misc";
        desc = "misc";
      }

      {
        on = [ "<Space>" "m" "p" ];
        run = "cd ${userDirs.documents}/REAPER_projects";
        desc = "music projects";
      }

      {
        on = [ "<Space>" "m" "u" ];
        run = "cd ${userDirs.music}";
        desc = "music";
      }

      {
        on = [ "<Space>" "n" "i" ];
        run = "cd ${flake_dir}";
        desc = "nix";
      }

      {
        on = [ "<Space>" "n" "v" ];
        run = "cd ${flake_dir}/mod/hm/tui/nixvim";
        desc = "nixvim";
      }

      {
        on = [ "<Space>" "n" "z" ];
        run = "cd ${flake_dir}/mod/hm/gui/zen";
        desc = "zen";
      }

      {
        on = [ "<Space>" "n" "y" ];
        run = "cd ${flake_dir}/mod/hm/tui/yazi";
        desc = "yazi";
      }

      {
        on = [ "<Space>" "n" "h" "n" ];
        run = "cd ${flake_dir}/host/nixos";
        desc = "hosts/nixos";
      }

      {
        on = [ "<Space>" "n" "h" "l" ];
        run = "cd ${flake_dir}/host/laptop";
        desc = "hosts/laptop";
      }

      {
        on = [ "<Space>" "n" "o" ];
        run = "cd ~/notes";
        desc = "nix";
      }

      {
        on = [ "<Space>" "p" "i" ];
        run = "cd ${userDirs.pictures}";
        desc = "pictures";
      }

      {
        on = [ "<Space>" "p" "r" ];
        run = "cd ~/dev/projects";
        desc = "projects";
      }

      {
        on = [ "<Space>" "r" ];
        run = "cd /";
        desc = "root";
      }

      {
        on = [ "<Space>" "s" "t" ];
        run = "cd ~/.local/share/Steam/steamapps/common";
        desc = "steamapps";
      }

      {
        on = [ "<Space>" "s" "i" ];
        run = "cd ~/silly";
        desc = "silly";
      }

      {
        on = [ "<Space>" "s" "h" ];
        run = "cd ~/.local/share";
        desc = "local share";
      }

      {
        on = [ "<Space>" "t" "r" ];
        run = "cd ~/.local/share/Trash/files";
        desc = "trash";
      }

      {
        on = [ "<Space>" "t" "e" ];
        run = "cd ~/textures";
        desc = "textures repo";
      }

      {
        on = [ "<Space>" "t" "m" ];
        run = "cd /tmp";
        desc = "/tmp";
      }

      {
        on = [ "<Space>" "v" ];
        run = "cd ${userDirs.videos}";
        desc = "videos";
      }

      {
        on = [ "<Space>" "w" "p" ];
        run = "cd ~/pic/wallpapers";
        desc = "wallpapers";
      }

      {
        on = [ "<Space>" "1" ];
        run = "cd /mnt/meow";
        desc = "drive #1";
      }

      {
        on = [ "<Space>" "2" ];
        run = "cd /mnt/small";
        desc = "drive #1";
      }
    # }}}


      # tabs {{{
      {
        on = ",";
        run = "tab_create --current";
        desc = "Create a new tab with CWD";
      }

      {
        on = "1";
        run = "tab_switch 0";
        desc = "Switch to the first tab";
      }

      {
        on = "2";
        run = "tab_switch 1";
        desc = "Switch to the second tab";
      }

      {
        on = "3";
        run = "tab_switch 2";
        desc = "Switch to the third tab";
      }

      {
        on = "4";
        run = "tab_switch 3";
        desc = "Switch to the fourth tab";
      }

      {
        on = "5";
        run = "tab_switch 4";
        desc = "Switch to the fifth tab";
      }

      {
        on = "6";
        run = "tab_switch 5";
        desc = "Switch to the sixth tab";
      }

      {
        on = "7";
        run = "tab_switch 6";
        desc = "Switch to the seventh tab";
      }

      {
        on = "8";
        run = "tab_switch 7";
        desc = "Switch to the eighth tab";
      }

      {
        on = "9";
        run = "tab_switch 8";
        desc = "Switch to the ninth tab";
      }

      {
        on = "[";
        run = "tab_switch -1 --relative";
        desc = "Switch to the previous tab";
      }

      {
        on = "]";
        run = "tab_switch 1 --relative";
        desc = "Switch to the next tab";
      }

      {
        on = "{";
        run = "tab_swap -1";
        desc = "Swap current tab with previous tab";
      }

      {
        on = "}";
        run = "tab_swap 1";
        desc = "Swap current tab with next tab";
      }

      # }}}

      # sudo {{{
      {
        on = ["S" "l" ];
        run = "plugin sudo -- paste";
        desc = "sudo paste";
      }

    # { on = ["S" "P"]; run = "plugin sudo -- paste --force"; desc = "sudo paste"; }

      { # sudo mv
        on = ["S" "s"];
        run = "plugin sudo -- rename";
        desc = "sudo rename";
      }

      { # sudo ln -s (absolute-path)
        on = ["S" "n" "l"];
        run = "plugin sudo -- link";
        esc = "sudo link";
      }

      { # sudo ln -s (relative-path)
        on = ["S" "n" "r"];
        run = "plugin sudo -- link --relative";
        desc = "sudo link relative path";
      }

      { # sudo ln
        on = ["S" "n" "h"];
        run = "plugin sudo -- hardlink";
        desc = "sudo hardlink";
      }

      { # sudo touch/mkdir
        on = ["S" "t"];
        run = "plugin sudo -- create";
        desc = "sudo create";
      }

      { # sudo trash
        on = ["S" "o"];
        run = "plugin sudo -- remove";
        desc = "sudo trash";
      }

      # }}}

      ];
      # }}}

      # spot {{{
      spot.keymap = [
      {
        on = "<Esc>";
        run = "close";
      }
      {
        on = "<Tab>";
        run = "close";
      }
      {
        on = "q";
        run = "quit";
      }

      {
        on = "a";
        run = "arrow next";
      }
      {
        on = "e";
        run = "arrow prev";
      }

      {
        on = "<C-e>";
        run = "arrow -10";
        desc = "Move cursor up half page";
      }
      {
        on = "<C-a>";
        run = "arrow 10";
        desc = "Move cursor down half page";
      }

      {
        on = [ "g" "g" ];
        run = "arrow top";
      }
      {
        on = "G";
        run = "arrow bot";
      }

      {
        on = "y";
        run = "copy cell";
      }
      {
        on = "<Enter>";
        run = "copy cell";
      }
      ];
      # }}}

      # input {{{
      input.keymap = [
      {
        on = "<Esc>";
        run = "escape";
        desc = "Exit visual mode, clear selected; or cancel search";
      }
      {
        on = "<enter>";
        run = "close --submit";
      }
      {
        on = "<Backspace>";
        run = "backspace";
      }
      {
        on = "<C-u>";
        run = "kill bol";
      }
      {
        on = "<C-k>";
        run = "kill eol";
      }
      {
        on = "H";
        run = "kill eol";
      }

      {
        on = "<C-a>";
        run = "move -999";
      }
      {
        on = "<C-e>";
        run = "move 999";
      }

      {
        on = "t";
        run = "backward";
      }
      {
        on = "c";
        run = "forward";
      }
      {
        on = "w";
        run = "forward --end-of-word";
      }

      {
        on = "n";
        run = "insert";
      }
      {
        on = "s";
        run = "insert --append";
      }

      {
        on = "r";
        run = "visual";
      }

      {
        on = "h";
        run = "delete";
      }
      {
        on = "i";
        run = "delete --insert";
      }
      {
        on = "<C-h>";
        run = "delete --cut";
      }
      {
        on = "y";
        run = "yank";
      }

      {
        on = "l";
        run = "paste";
      }
      {
        on = "L";
        run = "paste --before";
      }

      {
        on = "p";
        run = "undo";
      }
      {
        on = "P";
        run = "redo";
      }
      ];
      # }}}
    };
  };
}
