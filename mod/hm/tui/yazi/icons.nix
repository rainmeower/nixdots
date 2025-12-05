# TODO better way to format this stuff
{
  self,
  theme,
  lib,
  ...
}: let
  col = import (self + /theme/${builtins.elemAt (builtins.split "_" theme) 0}/colors.nix);
in {
  programs.yazi.theme.icon = {
    dirs = /* lib.mkDefault */ [
      { name = "*"; text = ""; }
    ];

    files = [
      { name = ".bash_profile"; text = ""; }
      { name = ".bashrc"; text = ""; }
      { name = ".gtkrc-2.0"; text = ""; }
      { name = ".Xresources"; text = ""; }
      { name = "license"; text = ""; fg = col.yellow; }
      { name = "license.md"; text = ""; fg = col.yellow; }

      { name = "readme"; text = "󰂺"; }
      { name = "readme.md"; text = "󰂺"; }
      { name = "readme.txt"; text = "󰂺"; }
      { name = "makefile"; text = "󱌣"; }
      { name = "config"; text = ""; }


      { name = "config"; text = ""; }
      { name = "settings"; text = ""; }

      # git {{{
      { name = ".git-blame-ignore-revs"; text = ""; fg = col.orange; }
      { name = ".gitattributes"; text = ""; fg = col.orange; }
      { name = ".gitignore"; text = ""; fg = col.orange; }
      { name = ".gitmodules"; text = ""; fg = col.orange; }
      { name = "COMMIT_EDITMSG"; text = ""; fg = col.orange; }
      { name = "HEAD"; text = ""; fg = col.orange; }
      { name = "description"; text = ""; fg = col.orange; }
      { name = "index"; text = ""; fg = col.orange; }
      { name = "packed-refs"; text = ""; fg = col.orange; }
      # }}}
    ];


    exts = /* lib.mkDefault */ [



    { name = "nu";   text = ""; fg = col.green; }
    { name = "sh";   text = ""; fg = col.green; }
    { name = "bash"; text = ""; fg = col.green; }
    { name = "zsh";  text = ""; fg = col.green; }
    { name = "fish"; text = ""; fg = col.green; }

    { name = "bat"; text = ""; fg = col.red; }
    { name = "exe"; text = ""; fg = col.red; }
    { name = "dll"; text = "󱉟"; fg = col.red; }


    { name = "gpg"; text = "󱕴"; fg = col.yellow; }
    { name = "desktop"; text = ""; }

    { name = "celeste"; text = ""; fg = col.purple; }




      # lang {{{
      { name = "c"; text = ""; fg = col.blue; }
      { name = "c++"; text = ""; fg = col.purple; }
      { name = "cpp"; text = ""; fg = col.purple; }
      { name = "cp"; text = ""; fg = col.purple; }
      { name = "h"; text = ""; fg = col.blue; }
      { name = "hpp"; text = ""; fg = col.purple; }

      { name = "glsl"; text = "󰓠"; fg = col.blue; } # sunglasses because they shade ur eyes like shaders lmao


      { name = "nix"; text = "󱄅"; fg = col.blue; } # this file !!!
      { name = "css"; text = ""; fg = col.blue; }
      { name = "html"; text = ""; fg = col.orange; }
      { name = "jar"; text = ""; fg = col.orange; }
      { name = "ml";  text = ""; fg = col.orange; }
      { name = "mli"; text = ""; fg = col.orange; }
      { name = "swift"; text = ""; fg = col.red; }
      { name = "kt"; text = "󱈙"; fg = col.purple; }
      { name = "svelte"; text = ""; fg = col.red; }
      { name = "ino"; text = ""; fg = col.blue; }
      { name = "js"; text = ""; fg = col.yellow; } # gross
      { name = "ts"; text = ""; fg = col.blue; }
      { name = "rs"; text = ""; fg = col.red; } # meoaw :3
      { name = "py"; text = ""; fg = col.yellow; }
      { name = "hs"; text = ""; fg = col.purple; }
      { name = "git"; text = ""; fg = col.orange; }
      { name = "lua"; text = "󰢱"; fg = col.blue; }
      { name = "zig"; text = ""; fg = col.yellow; }
      { name = "el"; text = ""; fg = col.purple; }

      # }}}



      # video {{{
      { name = "jpeg"; text = ""; fg = col.yellow; }
      { name = "webp"; text = ""; fg = col.yellow; }
      { name = "png"; text = ""; fg = col.yellow; }
      { name = "jpg"; text = ""; fg = col.yellow; }
      { name = "gif"; text = ""; fg = col.yellow; }
      { name = "ico"; text = ""; fg = col.yellow; }
      { name = "svg"; text = "󰜡"; fg = col.yellow; }
      { name = "vtf"; text = ""; fg = col.yellow; } # valve texture
      { name = "vmt"; text = ""; } # valve texture properties
      # }}}

      # video/audio {{{
      { name = "mp4";  text = ""; fg = col.purple; }
      { name = "webm"; text = ""; fg = col.purple; }
      { name = "mkv";  text = ""; fg = col.purple; }
      { name = "mov";  text = ""; fg = col.purple; }
      { name = "mp3";  text = ""; fg = col.purple; }
      { name = "ogg";  text = ""; fg = col.purple; }
      { name = "opus"; text = ""; fg = col.purple; }
      { name = "flac"; text = ""; fg = col.purple; }
      { name = "wav";  text = "󱑽"; fg = col.purple; }
      # }}}



      { name = "ttf"; text = ""; }
      { name = "otf"; text = ""; }

      { name = "ini";    text = ""; }
      { name = "cfg";    text = ""; }
      { name = "conf";   text = ""; }
      { name = "config"; text = ""; }

      { name = "csv";  text = ""; }
      { name = "yaml"; text = ""; }
      { name = "yml";  text = ""; }
      { name = "json"; text = ""; }
      { name = "toml"; text = ""; }
      { name = "xml";  text = "󰗀"; }

      { name = "dump"; text = ""; }
      { name = "db";  text = ""; }
      { name = "sql"; text = ""; }
      { name = "sqlite";  text = ""; }
      { name = "sqlite3"; text = ""; }

      # valve {{{
      { name = "bsp"; text = ""; }
      { name = "vmf"; text = ""; }
      { name = "vmx"; text = ""; }
      # }}}

      { name = "lock"; text = ""; }
      { name = "dat";  text = ""; }
      { name = "txt";  text = ""; } # override default

      { name = "md";   text = ""; }
      { name = "mdx";  text = ""; }
      { name = "org";  text = ""; fg = col.green; }
      { name = "norg"; text = ""; fg = col.blue; }

      { name = "iso";  text = ""; }
      { name = "qcow2"; text = ""; }


      { name = "kra"; text = ""; fg = col.pink; }
      { name = "kra~"; text = ""; } # krita autosave

      { name = "theme"; text = "󰏘"; fg = col.accent; }

      # archive {{{
      { name = "7z";  text = "󰗄"; fg = col.yellow; }
      { name = "gz";  text = "󰗄"; fg = col.yellow; }
      { name = "xz";  text = "󰗄"; fg = col.yellow; }
      { name = "bz";  text = "󰗄"; fg = col.yellow; }
      { name = "bz2"; text = "󰗄"; fg = col.yellow; }
      { name = "zst"; text = "󰗄"; fg = col.yellow; }
      { name = "lz4"; text = "󰗄"; fg = col.yellow; }
      { name = "lha"; text = "󰗄"; fg = col.yellow; }
      { name = "zip"; text = "󰗄"; fg = col.yellow; }
      { name = "rar"; text = "󰗄"; fg = col.yellow; }
      # }}}
  ];
  };
}
