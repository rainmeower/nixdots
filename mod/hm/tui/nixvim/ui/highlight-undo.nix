# FIXME
{
  pkgs,
  ...
}:{
  nv.extraPlugins = [ pkgs.vimPlugins.highlight-undo-nvim ];
  nv.extraConfigLua = ''
require('highlight-undo').setup({
  hlgroup = "HighlightUndo",
  duration = 200,
  pattern = {"*"},
  ignored_filetypes = { "fugitive", "TelescopePrompt" },
  -- ignore_cb is in comma as there is a default implementation. Setting
  -- to nil will mean no default os called.
  -- ignore_cb = nil,
})
'';
}
