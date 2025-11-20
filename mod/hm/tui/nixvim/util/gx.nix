{
  pkgs,
  ...
}: {
  programs.nixvim = {
    extraPlugins = with pkgs.vimPlugins; [
      (pkgs.vimUtils.buildVimPlugin {
        pname = "gx-extended.nvim";
        version = "6ab739c12c7fe39d5d48141fe56e12899558282c";
        src = pkgs.fetchFromGitHub {
          owner = "rmagatti";
          repo = "gx-extended.nvim";
          rev = "6ab739c12c7fe39d5d48141fe56e12899558282c";
          sha256 = "sha256-l6OV1gnk+s3JpGZs4x9vg1/6lKTgmEJLDxAvN/tYIxE=";
        };
      })
    ];
    extraConfigLua = ''
require('gx-extended').setup({
  -- Optional: NPM imports in JS/TS files
  enable_npm_imports = false,
  
  -- Optional: GitHub file line permalinks
  enable_github_file_line = true,
})
    '';
  };
}
