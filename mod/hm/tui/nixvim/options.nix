{
  rounding,
  flake_dir,
  ...
}:{
  programs.nixvim.opts = {
    termguicolors = true;

    winborder = if rounding then "rounded" else "single";

    number = true;
    relativenumber = false;
    signcolumn = "number";


    updatetime = 1000; # ms before swap file is written to disk
    # foldlevelstart = 99;

    scrolloff = 10;

    cursorline = true;

    shiftwidth = 2;
    tabstop = 2;
    expandtab = true;

    ignorecase = true;
    smartcase = true;

    autochdir = true; # auto cd into current buffers dir

    autoindent = true;
    smartindent = true;
    smarttab = true;

    hlsearch = false;

    # guifont = "mononoki:h25";

    wrap = true;
    linebreak = true; # only wrap at whitespace
    breakindent = true; # indent wrap
    breakindentopt = "shift:2";
    showbreak = "↪ "; 

    confirm = true; # confirm for :q with unsaved changes instead of failing


    splitbelow = true;
    splitright = true;
    undofile = true;

    foldcolumn = "auto";
    foldmethod = "marker";
# foldtext =
# ''v:folddashes.substitute(getline(v:foldstart),'\ #\\?\ \\?{{{',''','g')'';

  };
}
