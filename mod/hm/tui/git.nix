{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name= "nyxmeowmeow";
        email = "rraaiin@proton.me";
      };
    };
    settings = {
      pull.rebase = true;
      init.defaultBranch = "main";
      url = {
        "git@github.com:" = {
          insteadOf = "gh:";
        };
        "git@gitlab.com:" = {
          insteadOf = "gl:";
        };
        "git@codeberg.org:" = {
          insteadOf = "cb:";
        };
        "git@github.com:nyxmeowmeow/" = {
          insteadOf = "megh:";
        };
        "git@gitlab.com/nyxmeowmeow/" = {
          insteadOf = "megl:";
        };
        "git@codeberg.org/nyxmeowmeow/" = {
          insteadOf = "mecb:";
        };
      };
    };
  };
}
