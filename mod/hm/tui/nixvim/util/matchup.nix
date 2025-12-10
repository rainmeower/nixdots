{
  pkgs,
  ...
}:{
  nv.plugins.vim-matchup = {
    enable = true;

    settings = {
      mouse_enabled = 0;
      matchparen_offscreen.method = "popup"; # popup, status
      delim_noskips = 2; # ignore things in comments and strings

      matchparen_enabled = 1;
      matchparen_singleton = 0; # highlight known words with no match
      motion_enabled = 1;
      text_obj_enabled = 1;
      surround_enabled = 1; # s% textobject

      transmute_enabled = 1;
    };
  };
}
