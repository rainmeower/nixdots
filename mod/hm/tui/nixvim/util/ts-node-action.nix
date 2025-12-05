# FIXME add padding to the right of &mut
{
  pkgs,
  ...
}:{
#   programs.nixvim = {
#     extraPlugins = with pkgs.vimPlugins; [
#       (pkgs.vimUtils.buildVimPlugin {
#         pname = "ts-node-action";
#         version = "6dad0b229b3d63cc7e36bf54a96683074af7c701";
#         src = pkgs.fetchFromGitHub {
#           owner = "CKolkey";
#           repo = "ts-node-action";
#           rev = "6dad0b229b3d63cc7e36bf54a96683074af7c701";
#           sha256 = "sha256-o0il1RCmiLqtDiPlFNtv6bzEZfUcLOcRdOetsBABlSU=";
#         };
#       })
#     ];
#     extraConfigLua = ''
# require('ts-node-action').setup({
#     ['*'] = { -- Global table is checked for all langs
#         ["node_type"] = fn,
#         ...
#     },
#     lang = {
#       ["node_type"] = fn,
#       ...,
#     },
#     ...
# })
#     '';
#   };
}
