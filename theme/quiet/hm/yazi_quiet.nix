{
  lib,
  theme,
  ...
}: let
  col = import ../colors.nix;
in {
  config = lib.mkIf (theme == "quiet") {
    programs.yazi.theme = {
      mgr = {
        cwd.fg = col.fg;

        find_keyword  = {
          fg = col.violet;
          bold = true;
          italic = false;
          underline = false;
        };

        find_position = {
          fg = col.violet;
          bg = "reset";
          bold = true;
          italic = true;
        };

        marker_copied = {
          fg = col.green;
          bg = col.green;
        };

        marker_cut = {
          fg = col.red;
          bg = col.red;
        };

# visual select
        marker_marked = {
          fg = col.violet;
          bg = col.violet;
        };

# one at a time
        marker_selected = {
          fg = col.blue;
          bg = col.blue;
        };


        count_copied = {
          fg = col.bg;
          bg = col.green;
        };

        count_cut = {
          fg = col.bg;
          bg = col.red;
        };

        count_selected = {
          fg = col.bg;
          bg = col.blue;
        };

# TODO Highlighting
# syntect_theme = ""
      };
      status = {

        progress_label.bold = true;
        progress_normal = {
          fg = col.fg;
          bg = col.bg;
        };
        progress_error = {
          fg = col.red;
          bg = col.bg;
        };

        perm_sep.fg = col.grey;
        perm_typef.fg = col.green;
        perm_readf.fg = col.yellow;
        perm_writef.fg = col.red;
        perm_execf.fg = col.green;
      };
      filetype = {

        rules = [
# Images
        {
          mime = "image/*";
          fg = col.yellow;
        }

# Media
        {
          mime = "{audio,video}/*";
          fg = col.violet;
        }

# Archives
        {
          mime = "application/{zip,rar,7z*,tar,gzip,xz,zstd,bzip*,lzma,compress,archive,cpio,arj,xar,ms-cab*}";
          fg = col.red;
        }

# Documents
        {
          mime = "application/{pdf,doc;rtf}";
          fg = col.blue;
        }

# Empty files
# { mime = "inode/empty" fg = "red" }

# Special files
        {
          name = "*";
          is = "orphan";
          bg = col.red;
        }

        {
          name = "*";
          is = "exec";
          fg = col.green;
        }

# Dummy files
        {
          name = "*";
          is = "dummy";
          bg = col.red;
          fg = col.bg;
        }
        {
          name = "*/";
          is = "dummy";
          bg = col.red;
          fg = col.bg;
        }

# Fallback
        {
          name = "*";
          fg = col.fg;
        }
        {
          name = "*/";
          fg = col.accent;
        }
        ];



      };
      icon = {
        files = [
          { name = ".bash_profile"; text = ""; fg = col.fg; }
          { name = ".bashrc"; text = ""; fg = col.fg; }
          { name = ".gtkrc-2.0"; text = ""; fg = col.fg; }
          { name = ".Xresources"; text = ""; fg = col.fg; }
          { name = "license"; text = ""; fg = col.yellow; }
          # { name = "LICENSE"; text = ""; fg = col.yellow; }
          { name = "license.md"; text = ""; fg = col.yellow; }
          # { name = "LICENSE.md"; text = ""; fg = col.yellow; }
          { name = "readme"; text = "󰂺"; fg = col.fg; }
          { name = "readme.md"; text = "󰂺"; fg = col.fg; }
          { name = "readme.txt"; text = "󰂺"; fg = col.fg; }
          # { name = "README"; text = "󰂺"; fg = col.fg; }
          # { name = "README.md"; text = "󰂺"; fg = col.fg; }
          { name = ".git-blame-ignore-revs"; text = ""; fg = col.red; }
          { name = ".gitattributes"; text = ""; fg = col.red; }
          { name = ".gitignore"; text = ""; fg = col.red; }
          { name = ".gitmodules"; text = ""; fg = col.red; }
          { name = "makefile"; text = "󱌣"; fg = col.fg; }
          { name = "config"; text = ""; fg = col.fg; }
        ];

        exts = [
          { name = "nix"; text = "󱄅"; fg = col.blue; }
          { name = "css"; text = ""; fg = col.blue; }
          { name = "html"; text = ""; fg = col.orange; }
          { name = "yaml"; text = ""; fg = col.fg; }
          { name = "yml"; text = ""; fg = col.fg; }
          { name = "json"; text = ""; fg = col.fg; }
          { name = "toml"; text = ""; fg = col.red; }
          { name = "ini"; text = ""; fg = col.fg; }
          { name = "cfg"; text = ""; fg = col.fg; }
          { name = "csv"; text = ""; fg = col.fg; }
          { name = "jar"; text = ""; fg = col.orange; }
          { name = "ml"; text = ""; fg = col.orange; }
          { name = "mli"; text = ""; fg = col.orange; }
          { name = "swift"; text = ""; fg = col.red; }
          { name = "kt"; text = "󱈙"; fg = col.violet; }
          { name = "svelte"; text = ""; fg = col.red; }
          { name = "ino"; text = ""; fg = col.blue; }
          { name = "js"; text = ""; fg = col.yellow; }
          { name = "rs"; text = ""; fg = col.red; }
          { name = "py"; text = ""; fg = col.yellow; }
          { name = "c"; text = ""; fg = col.blue; }
          { name = "c++"; text = ""; fg = col.violet; }
          { name = "cpp"; text = ""; fg = col.violet; }
          { name = "cp"; text = ""; fg = col.violet; }
          { name = "lua"; text = "󰢱"; fg = col.blue; }
          { name = "zig"; text = ""; fg = col.orange; }
          { name = "hs"; text = ""; fg = col.violet; }
          { name = "git"; text = ""; fg = col.red; }
          { name = "lock"; text = ""; fg = col.fg; }
          { name = "dat"; text = ""; fg = col.fg; }
          { name = "txt"; text = ""; fg = col.fg; }
          { name = "png"; text = ""; fg = col.yellow; }
          { name = "webp"; text = ""; fg = col.yellow; }
          { name = "jpg"; text = ""; fg = col.yellow; }
          { name = "jpeg"; text = ""; fg = col.yellow; }
          { name = "gif"; text = ""; fg = col.yellow; }
          { name = "ico"; text = ""; fg = col.yellow; }
          { name = "svg"; text = "󰜡"; fg = col.yellow; }
          { name = "vtf"; text = ""; fg = col.yellow; }
          { name = "vmt"; text = ""; fg = col.fg; }
          { name = "mp4"; text = ""; fg = col.violet; }
          { name = "mkv"; text = ""; fg = col.violet; }
          { name = "mov"; text = ""; fg = col.violet; }
          { name = "mp3"; text = ""; fg = col.violet; }
          { name = "ogg"; text = ""; fg = col.violet; }
          { name = "opus"; text = ""; fg = col.violet; }
          { name = "flac"; text = ""; fg = col.violet; }
          { name = "wav"; text = "󱑽"; fg = col.violet; }
          { name = "nu"; text = ""; fg = col.green; }
          { name = "sh"; text = ""; fg = col.green; }
          { name = "bash"; text = ""; fg = col.green; }
          { name = "zsh"; text = ""; fg = col.green; }
          { name = "fish"; text = ""; fg = col.green; }
          { name = "bat"; text = ""; fg = col.red; }
          { name = "exe"; text = ""; fg = col.red; }
          { name = "dll"; text = "󱉟"; fg = col.red; }
          { name = "iso"; text = ""; fg = col.fg; }
          { name = "qcow2"; text = ""; fg = col.fg; }
          { name = "kra"; text = ""; fg = col.pink; }
          { name = "kra~"; text = ""; fg = col.fg; }
          { name = "xml"; text = "󰗀"; fg = col.fg; }
          { name = "md"; text = ""; fg = col.fg; }
          { name = "org"; text = ""; fg = col.green; }

          { name = "gz";  text = "󰗄"; fg = col.yellow; }
          { name = "xz";  text = "󰗄"; fg = col.yellow; }
          { name = "bz";  text = "󰗄"; fg = col.yellow; }
          { name = "bz2"; text = "󰗄"; fg = col.yellow; }
          { name = "zst"; text = "󰗄"; fg = col.yellow; }
          { name = "lz4"; text = "󰗄"; fg = col.yellow; }
          { name = "lha"; text = "󰗄"; fg = col.yellow; }
          { name = "zip"; text = "󰗄"; fg = col.yellow; }
          { name = "7z";  text = "󰗄"; fg = col.yellow; }
          { name = "rar"; text = "󰗄"; fg = col.yellow; }

          { name = "db"; text = ""; fg = col.fg; }
          { name = "sql"; text = ""; fg = col.fg; }
          { name = "sqlite"; text = ""; fg = col.fg; }
          { name = "sqlite3"; text = ""; fg = col.fg; }
          { name = "dump"; text = ""; fg = col.fg; }
          { name = "bsp"; text = ""; fg = col.fg; }
          { name = "vmf"; text = ""; fg = col.fg; }
          { name = "vmx"; text = ""; fg = col.fg; }
          { name = "el"; text = ""; fg = col.violet; }
          { name = "gpg"; text = "󱕴"; fg = col.yellow; }
          { name = "desktop"; text = ""; fg = col.violet; }

          { name = "celeste"; text = ""; fg = col.violet; }

        ];

# FIXME
#         conds = [
# # Special files
#           { if = "orphan"; text = ""; }
#           { if = "link"; text = ""; }
#           { if = "block"; text = ""; }
#           { if = "char"; text = ""; }
#           { if = "fifo"; text = ""; }
#           { if = "sock"; text = ""; }
#           { if = "sticky"; text = ""; }
#           { if = "dummy"; text = ""; }
#
# # Fallback
#           { if = "dir"; text = ""; }
#           { if = "exec"; text = ""; }
#           { if = "!dir"; text = ""; }
#         ];
      };
    };
  };
}
