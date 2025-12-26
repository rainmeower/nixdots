{
  lib,
  ...
}:{
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = lib.mkForce false; # dont need it
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
      "rename-devices" = { # {{{
        "monitor.alsa.rules" = [
          {
            matches = [ { "node.name" = "alsa_output.usb-Kingston_HyperX_Virtual_Surround_Sound_00000000-00.analog-stereo"; } ];
            actions = {
              update-props = {
                "node.nick" = "hyperx headphones";
                "node.description" = "hyperx headphones";
              };
            };
          }

          {
            matches = [ { "node.name" = "alsa_output.pci-0000_0e_00.4.iec958-stereo"; } ];
            actions = {
              update-props = {
                "node.nick" = "headphone jack";
                "node.description" = "headphone jack";
              };
            };
          }
        ];
      }; # }}}

      "disable-devices" = { # {{{
        "monitor.alsa.rules" = [
          {
            matches = [ { "node.name" = "alsa_output.pci-0000_0c_00.1.hdmi-stereo"; } ];
            actions = {
              update-props = {
                "device.disabled" = true;
              };
            };
          }
        ];
      }; # }}}
    };
  };

  # make pipewire realtime-capable
  security.rtkit.enable = true;
}
