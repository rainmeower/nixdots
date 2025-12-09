{
  nv.autoCmd = [
  {
    event = [
      "BufEnter"
      "BufWinEnter"
    ];
    pattern = "*.md";
    command = "setlocal nonumber norelativenumber signcolumn=no";
  }
  {
    event = [
      "BufEnter"
      "BufWinEnter"
    ];
    pattern = "*.nix";
    command = "map <buffer> <silent> J J:s/ = { /.<cr>/};<cr>:s/ .*};/<cr>";
  }
  ];
}
