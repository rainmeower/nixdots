{
  pkgs,
  p,
  ...
}:{
  services.clipse = {
    enable = true;

    historySize = 50;
    allowDuplicates = false;
    # historyFile = "clipboard_history.json";
    # # themeFile = "custom_theme.json";
    # tempDir = "tmp_files";

    imageDisplay = {
      # basic, kitty, sixel
      type = "sixel";
    };

    keyBindings = {
      choose = "enter";

      nextPage = "i";
      prevPage = "h";
      down = "a";
      up = "e";



      clearSelected = "R";
      end = "end";
      filter = "/";
      home = "home";
      more = "?";
      preview = " ";
      quit = "q";
      remove = "delete";
      selectDown = "ctrl+down";
      selectSingle = "r";
      selectUp = "ctrl+up";
      togglePin = "p";
      togglePinned = "tab";
      yankFilter = "ctrl+r";
    };

    theme = {
      useCustomTheme = true;
      DimmedDesc = p.comment;
      DimmedTitle = p.comment;
      FilteredMatch = p.accent;
      NormalDesc = "#000000";
      NormalTitle = p.fg;
      SelectedDesc = "#000000";
      SelectedTitle = "#ffffff";
      SelectedBorder = "#00000000";
      SelectedDescBorder = "#00000000";
      TitleFore = p.fg;
      Titleback = "#00000000";
      StatusMsg = "#ffffff";
      PinIndicatorColor = p.accent;
    };
  };
}
