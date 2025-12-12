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
    command = "map <buffer> <silent> J J:s/ = { /.<cr>mz/};<cr>:s/ .*};/<cr>`z";
  }
  {
    event = [
      "BufEnter"
      "BufWinEnter"
    ];
    pattern = "*.nix";
    command = "map <buffer> <silent> gca :norm A/*  */<cr>==$hhi";
  }
  ];
}
