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
  home.file.".config/usercontent/stackoverflow.css".text = /* css */ ''
@-moz-document domain("stackoverflow.com") {
.left-sidebar,
#sidebar, .sidebar {
  visibility: hidden !important;
}

body {
    --theme-body-font-color: ${col.fg} !important;
    --black-600: ${col.fg} !important;
    --black: ${col.fg} !important;
    --white: transparent !important;
    --highlight-bg: ${col.button}AA !important;
    --theme-link-color: ${col.blue} !important;
    --theme-secondary-400: ${col.blue} !important;
    --_an-a-fc: ${col.grey} !important;
    

}

.s-prose :not(.s-code-block) > code {
  color: ${col.fg} !important;
  background-color: ${col.button} !important;
  border-radius: ${if os_config.rounding then "3px" else "none"} !important;
}
}
'';
}
