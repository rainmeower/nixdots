{
  pkgs,
  ...
}:{
  nv.plugins.vim-matchup = {
    enable = true;

    settings = {
      mouse_enabled = false;
      matchparen_offscreen.method = "popup"; # popup, status
      delim_noskips = 2; # ignore things in comments and strings

      matchparen_enabled = true;
      matchparen_singleton = false; # highlight known words with no match
      motion_enabled = true;
      text_obj_enabled = true;
      surround_enabled = true; # s% textobject

      transmute_enabled = true;
    };
  };
}
