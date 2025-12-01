{
  self,
  theme,
  lib,
  ...
}: let
  col = import (self + /theme/${builtins.elemAt (builtins.split "_" theme) 0}/colors.nix);
in {
  programs.yazi.theme = {
    icon = {
      dirs = /* lib.mkDefault */ [
        # use default dir icons
        { name = ".config"; text = ""; }
        { name = "Desktop"; text = ""; }
        { name = "Documents"; text = ""; }
        { name = "Downloads"; text = ""; }
        { name = "Music"; text = ""; }
        { name = "Pictures"; text = ""; }
        { name = "Videos"; text = ""; }
      ];
      exts = /* lib.mkDefault */ [
        { name = "ttf"; text = ""; }
        { name = "otf"; text = ""; }
        { name = "ini"; text = ""; }
        { name = "cfg"; text = ""; }
        { name = "csv"; text = ""; }
        { name = "yaml"; text = ""; }
        { name = "yml";  text = ""; }
        { name = "json"; text = ""; }
        { name = "db"; text = ""; }
        { name = "sql"; text = ""; }
        { name = "sqlite"; text = ""; }
        { name = "sqlite3"; text = ""; }
        { name = "dump"; text = ""; }
        { name = "bsp"; text = ""; }
        { name = "vmf"; text = ""; }
        { name = "vmx"; text = ""; }
        { name = "lock"; text = ""; }
        { name = "dat"; text = ""; }
        { name = "txt"; text = ""; }
        { name = "kra~"; text = ""; }
        { name = "xml"; text = "󰗀"; }
        { name = "md"; text = ""; }
        { name = "iso"; text = ""; }
        { name = "qcow2"; text = ""; }



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
      ];
    };
  };
}
