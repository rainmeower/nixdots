{
  font_name,
  rounding,
  p,
  ...
}:{
  home.file.".config/usercontent/crates.css".text = /* css */ ''
@-moz-document domain("crates.io") {
* {
  font-family: ${font_name} !important;
  ${if !rounding then "border-radius: 0px !important;" else null}
}

@layer components {
  .hero-buttons_ea965244a,
  .hero-title_eb1a88f63,
  .blurb_ea965244a {
    display: none !important;
  }

  .wrapper_efa71a50b pre {
    background-color: ${p.button_trans} !important;
  }
 :is(.wrapper_efa71a50b p, .wrapper_efa71a50b li) code {
    background-color: ${p.button_trans} !important;
 }

  .main_e79536261 {
    background-color: transparent !important;
    color: ${p.fg} !important;
  }

  .box_e93d40046 {
    --shadow: none !important;
    background-color: ${p.button_trans} !important;
    color: ${p.fg} !important;
  }

  .input-lg_e39186c09, .input-sm_e39186c09 {
    background-color: ${p.button_trans} !important;
    color: ${p.fg} !important;
  }

  .subtitle_e93d40046 {
    color: ${p.grey} !important;
  }

  .docs_ea66d4641 {
    --shadow: none !important;
    background: none !important;
    box-shadow: none !important;
  }
}

:root {
  --header-bg-color: transparent !important;
  --yellow700: ${p.accent} !important;
  --yellow500: ${p.accent} !important;
  --link-hover-color: ${p.accent} !important;
  --link-color: ${p.accent} !important;
  --main-bg-dark: transparent !important;
}
}
  '';
}
