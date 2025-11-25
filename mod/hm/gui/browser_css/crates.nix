{
  font_name,
  os_config,
  lib,
  theme,
  self,
  ...
}: let
  # theme_trimmed = lib.strings.removeSuffix "_zen" theme;
  theme_trimmed = builtins.split "_" theme;
  # theme_trimmed2 = lib.lists.flatten theme_trimmed;
  col = import "${self}/theme/${builtins.elemAt (builtins.split "_" theme) 0}/colors.nix";
in {
  home.file.".config/usercontent/crates.css".text = /* css */ ''
@-moz-document domain("crates.io") {
* {
  font-family: ${font_name} !important;
  ${if !os_config.rounding then "border-radius: 0px !important;" else null}
}

@layer components {
  .hero-buttons_ea965244a,
  .hero-title_eb1a88f63,
  .blurb_ea965244a {
    display: none !important;
  }

  .wrapper_efa71a50b pre {
    background-color: ${col.button}AA !important;
  }
 :is(.wrapper_efa71a50b p, .wrapper_efa71a50b li) code {
    background-color: ${col.button}AA !important;
 }

  .main_e79536261 {
    background-color: transparent !important;
    color: ${col.fg} !important;
  }

  .box_e93d40046 {
    --shadow: none !important;
    background-color: ${col.button}AA !important;
    color: ${col.fg} !important;
  }

  .input-lg_e39186c09, .input-sm_e39186c09 {
    background-color: ${col.button}AA !important;
    color: ${col.fg} !important;
  }

  .subtitle_e93d40046 {
    color: ${col.grey} !important;
  }

  .docs_ea66d4641 {
    --shadow: none !important;
    background: none !important;
    box-shadow: none !important;
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
