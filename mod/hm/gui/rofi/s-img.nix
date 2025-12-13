{
  rounding,
  p,
  font_name,
  ...
}: let
  radius = if rounding then "10px" else "0px";
in {
  xdg.configFile."rofi/s-img.rasi".text = # {{{
  /* rasi */ ''
configuration {
  modi:                "drun";
  show-icons:          true;
  drun-display-format: "{name}";
}

window {
  enabled:          true;
  fullscreen:       false;
  width:            80%;
  height:           65%;
  transparency:     "real";
  cursor:           "default";
  spacing:          0px;
  padding:          10px;
  border:           3px;
  border-radius:    ${radius};
  border-color:     ${p.accent};
  background-color: ${p.bg_trans};
}

mainbox {
  enabled:          true;
  children:         [ "inputbar", "listview" ];
  background-color: transparent;
}

inputbar {
  enabled:          true;
  spacing:          10px;
  border-color:     ${p.fg};
  background-color: transparent;
  text-color:       ${p.fg};
  children:         [ "entry", "prompt" ];
}

prompt {
  enabled:          true;
  padding:          15px 15px 15px 15px;
  border:           0px 0px 0px 1px;
  border-color:     ${p.fg};
  background-color: transparent;
  text-color:       inherit;
}

textbox-prompt-colon {
  enabled:           true;
  expand:            false;
  str:               "::";
  background-color:  inherit;
  text-color:        inherit;
}

entry {
  enabled:           true;
  border-radius:     ${radius};
  padding:           15px;
  background-color:  transparent;
  text-color:        inherit;
  cursor:            text;
  placeholder-color: inherit;
}

listview {
  enabled:   true;
  columns:   10;
  lines:     4;
  spacing:   0px;
  padding:   0px 0px;
  cycle:     true;
  dynamic:   false;
  scrollbar: false;
  flow:      horizontal;
  reverse:   false;
  fixed-height:     true;
  fixed-columns:    true;
  cursor:           "default";
  background-color: transparent;
  text-color:       ${p.fg};
}

element {
  enabled:          true;
  orientation:      vertical;
  spacing:          0px;
  padding:          0px 0px 10px 0px;
  cursor:           pointer;
  background-color: transparent;
  text-color:       ${p.fg};
}

@media(max-aspect-ratio: 1.8) {
element {
  orientation: vertical;
}
}

element selected.normal {
  background-color: ${p.button_trans};
  text-color:       ${p.fg};
}

element-icon {
  border-radius:	  ${radius};
  size:             180px;
  cursor:           inherit;
  background-color: transparent;
  text-color:       inherit;
  padding:          0px 0px 4px 0px;
}

element-text {
  vertical-align:   0.5;
  horizontal-align: 0.5;
  padding:          0px;
  cursor:           inherit;
  background-color: transparent;
  text-color:       inherit;
}
  ''; # }}}

  xdg.configFile."rofi/launcher3.rasi".text = # {{{
  /* rasi */ ''
configuration {
  location:  0;
  fixed-num-lines:  true;
  show-icons:  false;
  sidebar-mode:  true;
  scroll-method:  1;
  window-format:  "[{w}] ··· {c} ···   {t}";
  click-to-exit:  true;
  combi-hide-mode-prefix:  false;
}


window {
  border:  3px;
  border-color:  ${p.accent};
  border-radius:  0px;
  width:              300px;
  height:             0px;
  background-color:   ${p.bg_trans};
}

prompt {
  spacing:  0;
  background-color: transparent;
  text-color:       ${p.accent};
  padding:          6px 10px 6px 10px;
  background-color: transparent;
  font:             "${font_name} 22";
}

// FIXME white line
textbox-prompt-colon {
  expand:     false;
  str:        "";
  padding:    0px;
  text-color: inherit;
}

entry {
  expand:           true;
  text-color:       ${p.fg};
  padding:          6px 2px 6px 2px;
  background-color: transparent;
  font:             "${font_name} 22";
}

inputbar {
  children:  [ prompt,textbox-prompt-colon,entry ];
  background-color: transparent;
}

mainbox {
  spacing:  6px;
  padding:  10px;
  background-color: transparent;
}

listview {
  lines: 5;
  columns: 1;
  fixed-height:  0;
  scrollbar:  false;
  padding:  4px 0px 0px;
  background-color: transparent;
}

element-text, element-icon {
  background-color: inherit;
  text-color:       inherit;
  font:             "${font_name} 22";
}

element {
}
element selected.normal {
  background-color:  ${p.accent};
  text-color:        ${p.bg};
}

textbox,
element normal.active,
element normal.normal,
element selected.active,
element alternate.normal,
element alternate.active {
  background-color:  transparent;
  text-color:        ${p.accent};
}

button {
  margin:  5px 0px 0px 0px;
  horizontal-align:               0.5;
  vertical-align:                 0.5;
  padding:  6px;
  text-color:  ${p.accent};
}

button selected {
  background-color:             	${p.accent};
  text-color:  ${p.bg};
  border:  0px;
  border-radius:  0px;
  border-color:  ${p.accent};
}

scrollbar,
message {
  display: none;
}

  ''; # }}}

}
