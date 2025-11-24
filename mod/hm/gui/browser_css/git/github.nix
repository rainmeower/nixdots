{
  font_name,
  os_config,
  lib,
  theme,
  ...
}: let
  theme_trimmed = lib.strings.removeSuffix "_zen" theme;
  col = import ../../../../../theme/${theme_trimmed}/colors.nix;
in {
  home.file.".config/usercontent/github.css".text = /* css */ ''
@-moz-document domain("github.com") {
* {
  font-family: ${font_name} !important;
  ${if !os_config.rounding then "border-radius: 0px !important;" else null}
}

.markdown-body {
  font-family: ${font_name} !important;
  font-size: 20px !important;
}
:root {
  --fgColor-default: ${col.fg} !important;
  --color-fg-default: ${col.fg} !important;
  --bgColor-default: transparent !important;
  --bgColor-disabled: transparent !important;
  --bgColor-inset: transparent !important;

  --bgColor-muted: ${col.button}AA !important;

  --button-primary-bgColor-active: ${col.green} !important;
  --button-primary-bgColor-disabled: ${col.green} !important;
  --button-primary-bgColor-hover: ${col.green} !important;
  --button-primary-borderColor-disabled: ${col.green} !important;
  --bgColor-open-emphasis: ${col.green} !important;
  --fgColor-success: ${col.green} !important;
  --borderColor-success-emphasis: ${col.green} !important;
  --borderColor-accent-emphasis: ${col.green} !important;

  /* links */
  --fgColor-accent: ${col.blue} !important;

  --button-primary-bgColor-rest: ${col.green} !important;
  --button-primary-fgColor-rest: ${col.bg} !important;

  /* closed issue/pr */
  --bgColor-done-emphasis: ${col.purple} !important;
}

.search-suggestions {
  background: ${col.bgtrans} !important;
}
/* hide gross smelly ai buttons */
.CopilotAgentModeButton-module__buttonGroup--ReOsn,
.AppHeader-CopilotChat {
  display: none !important;
}

.markdown-body pre {
  background: none !important;
}
.markdown-body code:not(.markdown-body pre), .markdown-body tt:not(.markdown-body pre) {
  font-size: 85%;
  background-color: var(--bgColor-muted) !important;
}


/* file icons */
.medium-red::before {
  color: ${col.red} !important;
}
.medium-cyan::before {
  color: ${col.cyan} !important;
}
.medium-purple::before {
  color: ${col.purple} !important;
}
.medium-blue::before {
  color: ${col.blue} !important;
}
.medium-yellow::before {
  color: ${col.yellow} !important;
}
.config-icon::before,
.react-directory-filename-column .icon-directory {
  color: ${col.fg} !important;
}

'';
}
