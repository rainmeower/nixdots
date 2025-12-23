{
  nv.plugins.gitsigns = {
    enable = true;
    settings = {
      current_line_blame = false;
      signcolumn = true;
      signs = {
        add = {
          text = "▍";
        };
        change = {
          text = "▍";
        };
        changedelete = {
          text = "~";
        };
        delete = {
          text = "▁";
        };
        topdelete = {
          text = "▔ ";
        };
        untracked = {
          text = "▍";
        };
      };
      watch_gitdir = {
        follow_files = true;
      };
    };
  };
}
