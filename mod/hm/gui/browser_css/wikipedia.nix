{
  font_name,
  rounding,
  lib,
  theme,
  ...
}:
let
  theme_trimmed = lib.strings.removeSuffix "_zen" theme;
  col = import ../../../../theme/${theme_trimmed}/colors.nix;
in {
  home.file.".config/usercontent/wikipedia.css".text = /* css */ ''
@-moz-document domain("wikipedia.org") {
* {
  font-family: ${font_name} !important;
  ${if !rounding then "border-radius: 0px !important;" else null}
}

root: {
  --font: ${font_name} !important;
  --bg-color: transparent !important;
  --background-color-base: transparent !important;
  --background-color-interactive-subtle: ${col.button_trans} !important;
}

body {
  background: transparent !important;
  font-family: ${font_name} !important;
}

@media screen {
  .vector-body-before-content,
  .vector-page-titlebar > .mw-portlet-lang:last-child {
    display: none !important;
  };

  a:where(:not([role="button"])) {
    color: ${col.blue} !important;
  }

  html.skin-theme-clientpref-night {
    color-scheme: dark;
    --background-color-base: transparent !important;
    --color-base: ${col.fg} !important;
    --color-base--hover:${col.fg} !important;
    --color-emphasized:${col.fg} !important;
    --color-inverted: transparent !important;
  }
}
}
  '';
}
