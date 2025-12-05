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

      # video {{{
      { name = "png"; text = ""; fg = col.yellow; }
      { name = "webp"; text = ""; fg = col.yellow; }
      { name = "jpg"; text = ""; fg = col.yellow; }
      { name = "jpeg"; text = ""; fg = col.yellow; }
      { name = "gif"; text = ""; fg = col.yellow; }
      { name = "ico"; text = ""; fg = col.yellow; }
      { name = "svg"; text = "󰜡"; fg = col.yellow; }
      { name = "vtf"; text = ""; fg = col.yellow; } # valve texture
      { name = "vmt"; text = ""; } # valve texture properties
      # }}}

      # video/audio {{{
      { name = "mp4"; text = ""; fg = col.purple; }
      { name = "webm"; text = ""; fg = col.purple; }
      { name = "mkv"; text = ""; fg = col.purple; }
      { name = "mov"; text = ""; fg = col.purple; }
      { name = "mp3"; text = ""; fg = col.purple; }
      { name = "ogg"; text = ""; fg = col.purple; }
      { name = "opus"; text = ""; fg = col.purple; }
      { name = "flac"; text = ""; fg = col.purple; }
      { name = "wav"; text = "󱑽"; fg = col.purple; }
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
      { name = "xml";  text = "󰗀"; }

      { name = "db";  text = ""; }
      { name = "sql"; text = ""; }
      { name = "sqlite";  text = ""; }
      { name = "sqlite3"; text = ""; }
      { name = "dump"; text = ""; }

      # valve {{{
      { name = "bsp";  text = ""; }
      { name = "vmf";  text = ""; }
      { name = "vmx";  text = ""; }
      # }}}

      { name = "lock"; text = ""; }
      { name = "dat";  text = ""; }
      { name = "txt";  text = ""; }
      { name = "md";   text = ""; }
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
