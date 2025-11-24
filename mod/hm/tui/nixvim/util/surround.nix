{
  programs.nixvim = {
    # extraPlugins = [ pkgs.vimPlugins.mini-surround ];
    #  extraConfigLua = ''
    #    require('mini.surround').setup()
    #    '';
    #    };
    plugins.mini-surround = {
      enable = true;
    };
  };
}
