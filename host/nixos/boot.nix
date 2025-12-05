{
  pkgs,
  config,
  ...
}:{
# TODO limine
  boot = {
    loader = {
      timeout = 2;
      systemd-boot.enable = true;
      systemd-boot.configurationLimit = 50;
      efi.canTouchEfiVariables = true;
    };

    kernelPackages = pkgs.linuxPackages_xanmod_latest;
    kernelParams = let
      inherit (config.monitor) DP-1 DP-3;
      s = toString;
    in [
      "video=DP-1:${s DP-1.width}x${s DP-1.height}@${s DP-1.refresh}"
      "video=DP-3:${s DP-3.width}x${s DP-3.height}@${s DP-3.refresh}"
    ];

    # initrd.kernelModules = [];
    kernelModules = [ "amdgpu" ];
    blacklistedKernelModules = [

      # "battery"

      /* ps2 */
      # "vivaldi_fmap"
      # "atkbd"
      # "libps2"
      # "serio"
      # "i8042"

      /* bluetooth */
      "bluetooth"
      "btrtl"
      "btmtk"
      "btintel"
      "btbcm"
      "btusb"
    ];
  };
}
