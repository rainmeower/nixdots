{
  config,
  lib,
  pkgs,
  ...
}:
let
  shared_extensions = with pkgs.nur.repos.rycee.firefox-addons; [
    ublock-origin
    darkreader
    bitwarden
    userchrome-toggle
    user-agent-string-switcher
    stylus
    canvasblocker
    tridactyl
    clearurls
    fastforwardteam
    shinigami-eyes
    #bypass-paywalls-clean
    unpaywall
    pronoundb
    don-t-fuck-with-paste
    google-container
    # containerise
    i-dont-care-about-cookies
    decentraleyes
    noscript
  ];

  meow_extensions = with pkgs.nur.repos.rycee.firefox-addons; [
    indie-wiki-buddy
    lovely-forks
    refined-github
    github-issue-link-status
    github-file-icons
  ] ++ shared_extensions;

  media_extensions = with pkgs.nur.repos.rycee.firefox-addons; [
    sponsorblock
    return-youtube-dislikes
    # "7tv"
    betterttv
    blocktube
    # TODO alternate player for twitch
  ] ++ shared_extensions;

in {
  programs.zen-browser.profiles."meow".extensions = {
    packages = meow_extensions;
    force = true;
  };

  programs.zen-browser.profiles."media".extensions = {
    packages = media_extensions;
    force = true;
  };

  programs.zen-browser.policies = {
     ExtensionSettings = with builtins;
        let extension = shortId: uuid: {
          name = uuid;
          value = {
            install_url = "https://addons.mozilla.org/en-US/firefox/downloads/latest/${shortId}/latest.xpi";
            installation_mode = "normal_installed";
          };
        };
        in listToAttrs [
          (extension "tabflow" "@tabflow")
        ];
        # To add additional extensions, find it on addons.mozilla.org, find
        # the short ID in the url (like https://addons.mozilla.org/en-US/firefox/addon/!SHORT_ID!/)
        # Then, download the XPI by filling it in to the install_url template, unzip it,
        # run `jq .browser_specific_settings.gecko.id manifest.json` or
        # `jq .applications.gecko.id manifest.json` to get the UUID
  };
}
