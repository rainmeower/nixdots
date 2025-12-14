{
  security.polkit = {
    enable = true;
    # extraConfig = ''
    #   polkit.addRule(function(action, subject) {
    #     if (action.id == "org.freedesktop.udisks2.filesystem-mount" && subject.isInGroup("wheel")) {
    #       return polkit.Result.YES;
    #     }
    #   });
    # '';
  };

  systemd.services.polkit.wantedBy = [ "graphical.target" ];

  security.soteria = {
    enable = true;
  };
}
