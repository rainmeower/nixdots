{
  font_name,
  rounding,
  p,
  ...
}:{
  home.file.".config/usercontent/github.css".text = /* css */ ''
@-moz-document domain("github.com") {
* {
  font-family: ${font_name} !important;
  ${if !rounding then "border-radius: 0px !important;" else null}
}

.markdown-body {
  font-family: ${font_name} !important;
  font-size: 20px !important;
}
:root {
  --fgColor-default: ${p.fg} !important;
  --color-fg-default: ${p.fg} !important;
  --bgColor-default: transparent !important;
  --bgColor-disabled: transparent !important;
  --bgColor-inset: transparent !important;

  --bgColor-muted: ${p.button_trans} !important;

  --button-primary-bgColor-active: ${p.green} !important;
  --button-primary-bgColor-disabled: ${p.green} !important;
  --button-primary-bgColor-hover: ${p.green} !important;
  --button-primary-borderColor-disabled: ${p.green} !important;
  --bgColor-open-emphasis: ${p.green} !important;
  --fgColor-success: ${p.green} !important;
  --borderColor-success-emphasis: ${p.green} !important;
  --borderColor-accent-emphasis: ${p.green} !important;

  /* links */
  --fgColor-accent: ${p.blue} !important;

  --button-primary-bgColor-rest: ${p.green} !important;
  --button-primary-fgColor-rest: ${p.bg} !important;

  /* closed issue/pr */
  --bgColor-done-emphasis: ${p.purple} !important;
}

.search-suggestions {
  background: ${p.bgtrans} !important;
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
  color: ${p.red} !important;
}
.medium-cyan::before {
  color: ${p.cyan} !important;
}
.medium-purple::before {
  color: ${p.purple} !important;
}
.medium-blue::before {
  color: ${p.blue} !important;
}
.medium-yellow::before {
  color: ${p.yellow} !important;
}
.config-icon::before,
.react-directory-filename-column .icon-directory {
  color: ${p.fg} !important;
}

'';
}
