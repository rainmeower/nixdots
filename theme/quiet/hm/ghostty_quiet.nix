{
  lib,
  theme,
  ...
}:{
  config = lib.mkIf (theme == "quiet") {
    programs.ghostty.settings = {
      background-opacity = 1;
    };
  };
}
