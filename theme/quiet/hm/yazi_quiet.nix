{ lib, theme, ... }:
let
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
          { name = ".bash_profile"; fg = col.fg; }
          { name = ".bashrc"; fg = col.fg; }
          { name = ".gtkrc-2.0"; fg = col.fg; }
          { name = ".Xresources"; fg = col.fg; }
          { name = "license"; fg = col.yellow; }
          # { name = "LICENSE"; fg = col.yellow; }
          { name = "license.md"; fg = col.yellow; }
          # { name = "LICENSE.md"; fg = col.yellow; }
          { name = "readme"; fg = col.fg; }
          { name = "readme.md"; fg = col.fg; }
          { name = "readme.txt"; fg = col.fg; }
          # { name = "README"; fg = col.fg; }
          # { name = "README.md"; fg = col.fg; }
          { name = ".git-blame-ignore-revs"; fg = col.red; }
          { name = ".gitattributes"; fg = col.red; }
          { name = ".gitignore"; fg = col.red; }
          { name = ".gitmodules"; fg = col.red; }
          { name = "makefile"; fg = col.fg; }
          { name = "config"; fg = col.fg; }
        ];

        exts = [
          { name = "nix"; fg = col.blue; }
          { name = "css"; fg = col.blue; }
          { name = "html"; fg = col.orange; }
          { name = "yaml"; fg = col.fg; }
          { name = "yml"; fg = col.fg; }
          { name = "json"; fg = col.fg; }
          { name = "toml"; fg = col.red; }
          { name = "ini"; fg = col.fg; }
          { name = "cfg"; fg = col.fg; }
          { name = "csv"; fg = col.fg; }
          { name = "jar"; fg = col.orange; }
          { name = "ml"; fg = col.orange; }
          { name = "mli"; fg = col.orange; }
          { name = "swift"; fg = col.red; }
          { name = "kt"; fg = col.violet; }
          { name = "svelte"; fg = col.red; }
          { name = "ino"; fg = col.blue; }
          { name = "js"; fg = col.yellow; }
          { name = "rs"; fg = col.red; }
          { name = "py"; fg = col.yellow; }
          { name = "c"; fg = col.blue; }
          { name = "c++"; fg = col.violet; }
          { name = "cpp"; fg = col.violet; }
          { name = "cp"; fg = col.violet; }
          { name = "lua"; fg = col.blue; }
          { name = "zig"; fg = col.orange; }
          { name = "hs"; fg = col.violet; }
          { name = "git"; fg = col.red; }
          { name = "lock"; fg = col.fg; }
          { name = "dat"; fg = col.fg; }
          { name = "txt"; fg = col.fg; }
          { name = "png"; fg = col.yellow; }
          { name = "webp"; fg = col.yellow; }
          { name = "jpg"; fg = col.yellow; }
          { name = "jpeg"; fg = col.yellow; }
          { name = "gif"; fg = col.yellow; }
          { name = "ico"; fg = col.yellow; }
          { name = "svg"; fg = col.yellow; }
          { name = "vtf"; fg = col.yellow; }
          { name = "vmt"; fg = col.fg; }
          { name = "mp4"; fg = col.violet; }
          { name = "mkv"; fg = col.violet; }
          { name = "mov"; fg = col.violet; }
          { name = "mp3"; fg = col.violet; }
          { name = "ogg"; fg = col.violet; }
          { name = "opus"; fg = col.violet; }
          { name = "flac"; fg = col.violet; }
          { name = "wav"; fg = col.violet; }
          { name = "nu"; fg = col.green; }
          { name = "sh"; fg = col.green; }
          { name = "bash"; fg = col.green; }
          { name = "zsh"; fg = col.green; }
          { name = "fish"; fg = col.green; }
          { name = "bat"; fg = col.red; }
          { name = "exe"; fg = col.red; }
          { name = "dll"; fg = col.red; }
          { name = "iso"; fg = col.fg; }
          { name = "qcow2"; fg = col.fg; }
          { name = "kra"; fg = col.pink; }
          { name = "kra~"; fg = col.fg; }
          { name = "xml"; fg = col.fg; }
          { name = "md"; fg = col.fg; }
          { name = "org"; fg = col.green; }

          { name = "gz";  fg = col.yellow; }
          { name = "xz";  fg = col.yellow; }
          { name = "bz";  fg = col.yellow; }
          { name = "bz2"; fg = col.yellow; }
          { name = "zst"; fg = col.yellow; }
          { name = "lz4"; fg = col.yellow; }
          { name = "lha"; fg = col.yellow; }
          { name = "zip"; fg = col.yellow; }
          { name = "7z";  fg = col.yellow; }
          { name = "rar"; fg = col.yellow; }

          { name = "db"; fg = col.fg; }
          { name = "sql"; fg = col.fg; }
          { name = "sqlite"; fg = col.fg; }
          { name = "sqlite3"; fg = col.fg; }
          { name = "dump"; fg = col.fg; }
          { name = "bsp"; fg = col.fg; }
          { name = "vmf"; fg = col.fg; }
          { name = "vmx"; fg = col.fg; }
          { name = "el"; fg = col.violet; }
          { name = "gpg"; fg = col.yellow; }
          { name = "desktop"; fg = col.violet; }

          { name = "celeste"; fg = col.violet; }

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
