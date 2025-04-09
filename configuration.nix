{ config, pkgs, ... }: {

  imports = [
      ./hardware-configuration.nix
      ./services.nix
    ];

  environment.systemPackages = with pkgs; [
    hyprprop
    krita
    opentabletdriver
    gh
    netcat
    jq
    wl-clipboard
    clipse
    eza
    fzf
    zoxide
    waybar
    vscodium
    walker
    udiskie
    udisks2
    gvfs
    nautilus
    gcc
    wget
    git
    dbus
    firefox
    vesktop
    foot
    hyprland
    hyprpaper
    hyprpicker
    polkit_gnome
    fish
    walker
    grimblast
    slurp
    #catppuccin-kvantum
    #catppuccin-gtk
    dunst
    libnotify
    playerctl
    yazi
    neovim
    fastfetch
    kanata
    dconf
    mesa
    libGL
    libdrm
    xwayland
    wine
    protonup
    lutris
  ];


  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.initrd.kernelModules = [ "amdgpu" ];
  boot.kernelParams = [
  "video=DP-1:2560x1440@165"
  "video=DP-3:2560x1440@75"
];



  fonts.packages = with pkgs; [
    pkgs.nerd-fonts.mononoki
    pkgs.nerd-fonts.iosevka
  ];

  networking.hostName = "nixos"; # Define your hostname.
  networking.networkmanager.enable = true;

  time.timeZone = "Australia/Brisbane";
  i18n.defaultLocale = "en_AU.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_AU.UTF-8";
    LC_IDENTIFICATION = "en_AU.UTF-8";
    LC_MEASUREMENT = "en_AU.UTF-8";
    LC_MONETARY = "en_AU.UTF-8";
    LC_NAME = "en_AU.UTF-8";
    LC_NUMERIC = "en_AU.UTF-8";
    LC_PAPER = "en_AU.UTF-8";
    LC_TELEPHONE = "en_AU.UTF-8";
    LC_TIME = "en_AU.UTF-8";
  };

  programs.steam = {
    enable = true;
    gamescopeSession.enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
  };

  programs.gamemode.enable = true;

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  environment.sessionVariables = { # protonup install path
    STEAM_EXTRA_COMPAT_TOOLS_PATHS = "/home/meow/.steam/root/compatibilitytools.d";
  };
  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];


  # Enable the X11 windowing system.





  






  security.polkit.enable = true;

  security.polkit.extraConfig = ''
    /* Allow members of the 'wheel' group to mount devices via Nautilus */
    polkit.addRule(function(action, subject) {
      if (action.id == "org.freedesktop.udisks2.filesystem-mount" && subject.isInGroup("wheel")) {
        return polkit.Result.YES;
      }
    });
  '';


  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  programs.fish.enable = true;

  users.users.meow = {
    isNormalUser = true;
    description = "meow";
    extraGroups = [ "networkmanager" "wheel" "storage" "plugdev" "video" "audio" ];
    shell = pkgs.fish;
    packages = with pkgs; [
    #  thunderbird
    ];
  };



  programs.firefox.enable = true;

  nixpkgs.config.allowUnfree = true;



  system.stateVersion = "24.11";

}
