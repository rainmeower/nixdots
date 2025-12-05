{
  config,
  lib,
  theme,
  ...
}:
let
  theme_trimmed = lib.strings.removeSuffix "_zen" theme;
  col = import ../../../../theme/${theme_trimmed}/colors.nix;
in {
  programs.yazi.theme = {
    which = {
      mask.hidden = true;
      cand.fg = col.accent;
      rest.fg = col.accent;
      desc.fg = col.comment;
      separator = " ";
    };
    mgr = {
      border_symbol = " ";
      hovered.reversed = true;
      preview_hovered.underline = true;

      cwd.fg = col.fg;

      find_keyword  = {
        fg = col.purple;
        bold = true;
        italic = false;
        underline = false;
      };

      find_position = {
        fg = col.purple;
        bg = "reset";
        bold = true;
        italic = true;
      };

      marker_copied = {
        fg = col.green;
        # bg = col.green;
      };

      marker_cut = {
        fg = col.red;
        # bg = col.red;
      };

      # visual mode
      marker_marked = {
        fg = col.purple;
        # bg = col.purple;
      };

      # individual select
      marker_selected = {
        fg = col.blue;
        # bg = col.blue;
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
    };

    tabs = {
      active = {
        bg = col.accent;
        fg = col.bg;
      };
      inactive = {
        bg = col.bg;
        fg = col.accent;
      };

      sep_inner = {
        open = "";
        close = "";
      };
      sep_outer = {
        open = "";
        close = "";
      };
    };

    spot = {
      title.fg = col.accent;
      tbl_cell = {
        fg = col.bg;
        bg = col.accent;
      };
    };
    filetype.rules = [
    {
      mime = "image/*";
      fg = col.yellow;
    }

    {
      mime = "{audio,video}/*";
      fg = col.violet;
    }

    {
      mime = "application/{zip,rar,7z*,tar,gzip,xz,zstd,bzip*,lzma,compress,archive,cpio,arj,xar,ms-cab*}";
      fg = col.red;
    }

    {
      mime = "application/{pdf,doc;rtf}";
      fg = col.blue;
    }

# { mime = "inode/empty" fg = "red" }

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

    # fallback
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
}
