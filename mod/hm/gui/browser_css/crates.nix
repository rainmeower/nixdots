{
  config,
  lib,
  theme,
  ...
}:
let
  theme_trimmed = lib.strings.removeSuffix "_zen" theme;
  col = import ../../../../theme/${theme_trimmed}/colors.nix;
in {
  home.file.".config/usercontent/crates.css".text = /* css */ ''
@-moz-document domain("crates.io") {
@layer components {
  .hero-buttons_ea965244a,
  .hero-title_eb1a88f63,
  .blurb_ea965244a {
    display: none !important;
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
    background-color: transparent !important;
    border-radius: var(--space-3xs);
    box-shadow: var(--shadow);
  }
}

:root {
  --header-bg-color: transparent !important;
  --yellow700: ${col.accent} !important;
  --yellow500: ${col.accent} !important;
  --link-hover-color: ${col.accent} !important;
  --link-color: ${col.accent} !important;
}
}
  '';
}
