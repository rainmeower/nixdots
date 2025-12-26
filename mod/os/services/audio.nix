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


    wireplumber.extraConfig = {
      "headphones-rename" = {
        "monitor.alsa.rules" = [
          {
            matches = [ { "node.name" = "alsa_output.usb-Kingston_HyperX_Virtual_Surround_Sound_00000000-00.analog-stereo"; } ];
            actions = {
              update-props = {
                "node.nick" = "hyperx cloud ii";
                "node.description" = "hyperx cloud ii";
              };
            };
          }
        ];
      };
    };
  };


  # make pipewire realtime-capable
  security.rtkit.enable = true;
}
