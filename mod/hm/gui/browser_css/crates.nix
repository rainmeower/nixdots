{
  config,
  os_config,
  lib,
  theme,
  ...
}: let
  theme_trimmed = lib.strings.removeSuffix "_zen" theme;
  col = import ../../../../theme/${theme_trimmed}/colors.nix;
in {
  home.file.".config/usercontent/crates.css".text = /* css */ ''
@-moz-document domain("crates.io") {
* {
  font-family: ${config.stylix.fonts.monospace.name} !important;
  ${if !os_config.rounding then "border-radius: 0px !important;" else ""}
}

@layer components {
  .hero-buttons_ea965244a,
  .hero-title_eb1a88f63,
  .blurb_ea965244a {
    display: none !important;
  }

  .wrapper_efa71a50b pre {
    background-color: ${col.button}CC !important;
  }
 :is(.wrapper_efa71a50b p, .wrapper_efa71a50b li) code {
    background-color: ${col.button}CC !important;
 }

  .main_e79536261 {
    background-color: transparent !important;
    color: ${col.fg} !important;
  }

  .box_e93d40046 {
    --shadow: none !important;
    background-color: ${col.button}CC !important;
    color: ${col.fg} !important;
  }

  .input-lg_e39186c09, .input-sm_e39186c09 {
    background-color: ${col.button}CC !important;
    color: ${col.fg} !important;
  }

  .subtitle_e93d40046 {
    color: ${col.grey} !important;
  }

  .docs_ea66d4641 {
    --shadow: none !important;
    box-shadow: var(--shadow);
  }
}

:root {
  --header-bg-color: transparent !important;
  --yellow700: ${col.accent} !important;
  --yellow500: ${col.accent} !important;
  --link-hover-color: ${col.accent} !important;
  --link-color: ${col.accent} !important;
  --main-bg-dark: transparent !important;
}
}
  '';
}
