{
  services.openssh = {
    enable = true;
    settings = {
      PasswordAuthentication = false;
      KbdInteractiveAuthentication = false;
      PubkeyAuthentication = true;
      X11Forwarding = false;
      AllowGroups = [ "ssh" ];
    };
  };
}
