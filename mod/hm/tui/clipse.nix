{
  pkgs,
  p,
  ...
}:{
  services.clipse = {
    # package = pkgs.my-clipse;
    imageDisplay = {
      type = "sixel";
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
