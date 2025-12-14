{
  inputs,
  ...
}:{
  imports = [
    inputs.stylix.nixosModules.stylix
  ];

  stylix = {
    autoEnable = false;
    targets = {
      gtk.enable = true;
      qt.enable = true;
    };
  };
}
