{
  font_name,
  rounding,
  p,
  ...
}:{
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
}

body {
  background: transparent !important;
  font-family: ${font_name} !important;
}

@media screen {
  .mw-footer-container,
  .vector-body-before-content,
  .vector-page-titlebar > .mw-portlet-lang:last-child {
    display: none !important;
  };

  a:where(:not([role="button"])) {
    color: ${p.blue} !important;
  }

  html.skin-theme-clientpref-night {
    color-scheme: dark;
    --background-color-base: transparent !important;
    --color-base: ${p.fg} !important;
    --color-base--hover:${p.fg} !important;
    --color-emphasized:${p.fg} !important;
    --color-inverted: transparent !important;
    --background-color-interactive-subtle: ${p.button_trans} !important;
  }

  .mw-parser-output a.external {
    background-image: none !important;
  }

}
}
  '';
}
