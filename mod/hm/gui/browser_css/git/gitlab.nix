{
  config,
  os_config,
  lib,
  theme,
  ...
}:
let
  theme_trimmed = lib.strings.removeSuffix "_zen" theme;
  col = import ../../../../../theme/${theme_trimmed}/colors.nix;
in {
  home.file.".config/usercontent/gitlab.css".text = /* css */ ''
@-moz-document domain("gitlab.com") {
  * {
    font-family: ${config.stylix.fonts.monospace.name} !important; 
    ${if !os_config.rounding then "border-radius: 0px !important;" else ""}
  }

  :root {
    --gl-background-color-default: transparent !important;
    --gl-background-color-subtle: transparent !important;
  }
}
  '';
}
