{
  inputs,
  username,
  home-manager,
  ...
}:{
  # services.terraria = {
  #   enable = true;
  #   port = 7777;
  #   autoCreatedWorldSize = "large";
  # };

  # imports = [
  #   inputs.tmodloader.nixosModules.tmodloader
  # ];
  #
  # users.users.${username}.extraGroups = [ "terraria" ];
  #
  # # https://github.com/andOrlando/nix-tmodloader
  # services.tmodloader = {
  #   enable = true;
  #   servers.meow = {
  #     enable = true;
  #     password = null;
  #     # openFilewall = false;
  #     install = [
  #       2563309347 # magic storage
  #       2619954303 # recipe browser
  #       2992213994 # instant platform fallthrough
  #       2565639705 # ore excavator
  #       3588960936 # transferrable loadouts
  #       3595084907 # place background tiles behind entities
  #       3453353275 # recipe browser include magic storage
  #       2569059803 # teleport to pylons from anywhere
  #       2904485272 # dash hotkey
  #       2562997415 # shorter respawn time
  #     ];
  #   };
  # };
}
