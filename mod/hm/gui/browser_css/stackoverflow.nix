# TODO font
{
  rounding,
  p,
  ...
}:{
  home.file.".config/usercontent/stackoverflow.css".text = /* css */ ''
@-moz-document domain("stackoverflow.com") {
.left-sidebar,
#sidebar, .sidebar {
  visibility: hidden !important;
}

body {
    --theme-body-font-color: ${p.fg} !important;
    --black-600: ${p.fg} !important;
    --black: ${p.fg} !important;
    --white: transparent !important;
    --highlight-bg: ${p.button_trans} !important;
    --theme-link-color: ${p.blue} !important;
    --theme-secondary-400: ${p.blue} !important;
    --_an-a-fc: ${p.grey} !important;
    

}

.s-prose :not(.s-code-block) > code {
  color: ${p.fg} !important;
  background-color: ${p.button} !important;
  border-radius: ${if rounding then "3px" else "none"} !important;
}
}
'';
}
