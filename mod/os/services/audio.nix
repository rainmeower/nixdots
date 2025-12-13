{
  lib,
  ...
}:{
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = lib.mkForce false;
    pulse.enable = true;
    jack.enable = true;

    # nix-gaming
    lowLatency = {
      enable = true;
      quantum = 64;
      rate = 48000;
    };
    # extraConfig.pipewire-pulse = {
    #   "pulse.properties" = {
    #     "min.quantum" = "256/48000 # 2.7ms";
    #   };
    # };
  };

  # make pipewire realtime-capable
  security.rtkit.enable = true;
}
