{
  lib,
  theme,
  ...
}:{
  config = lib.mkIf (theme == "everforest_medium") {

    nv.colorschemes.everforest = {
      enable = true;
      settings = {
        background = "medium";
        disable_italic_comments = true;
        show_eob = 0; # ~ at end of buffer
      };
    };
  };
}
