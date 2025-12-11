{
  pkgs,
  username,
  ...
}:{
  services = {
    xserver = {
      videoDrivers = [
        "amdgpu"
      ];
      displayManager.lightdm.enable = false; # enabled by default for some reason??
    };
    dbus.enable = true;
    printing.enable = false; # cups
  };



  # systemd.user.services.clipse = {
  #     wantedBy = [ "default.target" ];
  #     serviceConfig.ExecStart = "${pkgs.clipse}/bin/clipse";
  # };

  systemd.tmpfiles.rules = [ # i cant remember what this is for
    "L+    /opt/rocm/hip   -    -    -     -    ${pkgs.rocmPackages.clr}"
  ];
}
