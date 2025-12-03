{
  programs.nixvim.plugins.orgmode = {
    enable = true;

    lazyLoad.enable = true; # {{{
    lazyLoad.settings.event = [
      "DeferredUIEnter"
    ]; # }}}

    settings = {
      org_agenda_files = "~/org/**/*";
      org_default_notes_file = "~/org/refile.org";
    };
  };
}
