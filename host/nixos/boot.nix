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
      inherit (config.monitor) primary secondary;
      s = toString;
    in [
      "video=${primary.name}:${s primary.width}x${s primary.height}@${s primary.refresh}"
      "video=${secondary.name}:${s secondary.width}x${s secondary.height}@${s secondary.refresh}"
    ];

    # initrd.kernelModules = [];
    kernelModules = [ "amdgpu" ];
    blacklistedKernelModules = [



      "mac_hid" # macintosh mouse button 2+3 emulation

      # "battery"

      /* ps2 */
      "vivaldi_fmap"
      "atkbd"
      "libps2"

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
