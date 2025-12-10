{
  font_name,
  rounding,
  p,
  ...
}:{
  home.file.".config/usercontent/monkeytype.css".text = /* css */ ''
@-moz-document domain("monkeytype.com") {
* {
  font-family: ${font_name} !important;
  ${if !rounding then "border-radius: 0px !important;" else null}
}


html {
  --font: ${font_name} !important;
  --bg-color: transparent !important;
  --sub-alt-color: transparent !important;
  --correct-letter-color: ${p.grey} !important;
  --untyped-letter-color: ${p.fg} !important;
  --caret-color: ${p.fg} !important;
  --sub-color: ${p.grey} !important;
  --sub-alt-color: transparent !important;
  --error-color: ${p.red} !important;
  --error-extra-color: ${p.red} !important;
}
:root {
  --untyped-letter-color: ${p.fg} !important;
}

body {
  background: transparent !important;
  font-family: ${font_name} !important;
  --untyped-letter-color: ${p.fg} !important;
}

#words .word letter {
  --untyped-letter-color: ${p.fg} !important;
}

#restartTestButton {
  opacity: 0 !important; /* needs to still exist */
}



.levelAndBar, /* level num on profile */
#testConfig .puncAndNum, /* left side of top middle */
header #logo, /* monkeytype logo */
/* stuff at the bottom */
#contactPopupButton, supportMeButton,
footer .leftright .left .textButton, footer .leftright .right .textButton[aria-label="discord"],
footer .leftright .left .textButton, footer .leftright .right .textButton {
  display: none !important;
}



}
'';
}
