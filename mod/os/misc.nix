let
  lc = "en_AU.UTF-8";
in {
  time.timeZone = "Australia/Brisbane";
  i18n.defaultLocale = lc;
  i18n.extraLocaleSettings = {
    LC_ADDRESS = lc;
    LC_IDENTIFICATION = lc;
    LC_MEASUREMENT = lc;
    LC_MONETARY = lc;
    LC_NAME = lc;
    LC_NUMERIC = lc;
    LC_PAPER = lc;
    LC_TELEPHONE = lc;
    LC_TIME = lc;
  };
  # some games require random locales to run
  i18n.supportedLocales = ["all"];
}
