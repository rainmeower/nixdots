{
  p,
  lib,
  ...
}:{
  programs.yazi.theme = {
    which = {
      mask.hidden = true;
      cand.fg = p.accent;
      rest.fg = p.accent;
      desc.fg = p.comment;
      separator = " ";
    };
    mgr = {
      border_symbol = " ";
      hovered.reversed = true;
      preview_hovered.reversed = true;

      cwd.fg = p.fg;

      find_keyword  = {
        fg = p.purple;
        bold = true;
        italic = false;
        underline = false;
      };

      find_position = {
        fg = p.purple;
        bg = "reset";
        bold = true;
        italic = true;
      };

      # TODO can i use ▌ for the symbol
      marker_copied = {
        fg = p.green;
        bold = true;
        # bg = p.green;
      };

      marker_cut = {
        fg = p.red;
        bold = true;
        # bg = p.red;
      };

      # visual mode
      marker_marked = {
        fg = p.purple;
        bold = true;
        # bg = p.purple;
      };

      # individual select
      marker_selected = {
        fg = p.blue;
        bold = true;
        # bg = p.blue;
      };


      count_copied = {
        fg = p.bg;
        bg = p.green;
      };

      count_cut = {
        fg = p.bg;
        bg = p.red;
      };

      count_selected = {
        fg = p.bg;
        bg = p.blue;
      };
    };

    tabs = {
      active = {
        bg = lib.mkDefault p.accent;
        fg = p.bg;
      };
      inactive = {
        bg = p.bg;
        fg = lib.mkDefault p.accent;
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
      title.fg = p.accent;
      tbl_cell = {
        fg = p.bg;
        bg = p.accent;
      };
    };
    filetype.rules = [
    {
      mime = "image/*";
      fg = p.yellow;
    }
    {
      name = "*.kra";
      fg = p.yellow;
    }

    {
      mime = "{audio,video}/*";
      fg = p.violet;
    }

    {
      mime = "application/{zip,rar,7z*,tar,gzip,xz,zstd,bzip*,lzma,compress,archive,cpio,arj,xar,ms-cab*}";
      fg = p.red;
    }

    {
      mime = "application/{pdf,doc;rtf}";
      fg = p.pink;
    }

# { mime = "inode/empty" fg = "red" }

    {
      name = "*";
      is = "orphan";
      bg = p.red;
    }

    {
      name = "*";
      is = "exec";
      fg = p.green;
    }

    {
      name = "*";
      is = "dummy";
      bg = p.red;
      fg = p.bg;
    }
    {
      name = "*/";
      is = "dummy";
      bg = p.red;
      fg = p.bg;
    }

    # fallback
    {
      name = "*";
      fg = p.fg;
    }
    {
      name = "*/";
      fg = lib.mkDefault p.accent;
    }
    ];
  };
}
