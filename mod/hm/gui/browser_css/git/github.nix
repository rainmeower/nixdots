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
  home.file.".config/usercontent/github.css".text = /* css */ ''
@-moz-document domain("github.com") {
* {
  font-family: ${config.stylix.fonts.monospace.name} !important;
  ${if !os_config.rounding then "border-radius: 0px !important;" else ""}
}

.markdown-body {
  font-family: ${config.stylix.fonts.monospace.name} !important;
  font-size: 20px !important;
}
:root {
  --fgColor-default: ${col.fg} !important;
  --color-fg-default: ${col.fg} !important;
  --bgColor-default: transparent !important;
  --bgColor-disabled: transparent !important;
  --bgColor-inset: transparent !important;

  --button-primary-bgColor-active: ${col.green} !important;
  --button-primary-bgColor-disabled: ${col.green} !important;
  --button-primary-bgColor-hover: ${col.green} !important;
  --button-primary-borderColor-disabled: ${col.green} !important;
  --bgColor-open-emphasis: ${col.green} !important;
}

.search-suggestions {
  background: ${col.bgtrans} !important;
}
/* hide gross smelly ai buttons */
.CopilotAgentModeButton-module__buttonGroup--ReOsn,
.AppHeader-CopilotChat {
  display: none !important;
}
'';
}
