{
  font_name,
  lib,
  theme,
  rounding,
  ...
}: let
  theme_trimmed = lib.strings.removeSuffix "_zen" theme;
  col = import ../../../../../theme/${theme_trimmed}/colors.nix;
in {
  home.file.".config/usercontent/gitlab.css".text = /* css */ ''
@-moz-document domain("gitlab.com") {
  * {
    font-family: ${font_name} !important; 
    ${if !rounding then "border-radius: 0px !important;" else null}
  }

  :root {
    --gl-background-color-default: transparent !important;
    --gl-background-color-subtle: transparent !important;
  }
}
  '';
}
