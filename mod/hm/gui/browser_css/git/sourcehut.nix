{
  font_name,
  rounding,
  p,
  ...
}:{
  home.file.".config/usercontent/sourcehut.css".text = /* css */ ''
@-moz-document domain("sr.ht") {

* {
  font-family: ${font_name} !important;
  ${if !rounding then "border-radius: 0px !important;" else null}
}

body {
  font-family: ${font_name} !important;
  font-size: 20px !important;
}

@media (prefers-color-scheme: dark) {
  body {
    background: transparent !important;
    color: ${p.fg} !important;
  }
  a {
    color: ${p.blue} !important;
  }
}
}
'';
}
