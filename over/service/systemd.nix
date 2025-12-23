(final: prev: {
  systemd = prev.systemd.override {
    withApparmor = false;
    withQrencode = false;
    withRepart = false;
    withAudit = false;
    withImportd = false;
    withMachined = false;
    withPortabled = false;
    withRemote = false;
    withShellCompletions = false; # none for nushell
    withTpm2Tss = false;
    withSysupdate = false;
    withUkify = false;
    withNspawn = false;
    withVmspawn = false;
    withUtmp = false;
  };
})
