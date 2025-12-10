{
  font_name,
  rounding,
  p,
  ...
}:{
  home.file.".config/usercontent/reddit.css".text = /* css */ ''
@-moz-document domain("www.reddit.com") {
* {
  color: ${p.fg} !important;
  font-family: ${font_name} !important;
  ${if !rounding then "border-radius: 0px !important;" else null}
}

.left-sidebar, .mt-md, /* .mt-lg, .mb-0 */ {
  display: none !important;
}
.bg-neutral-background {
  background-color: transparent !important;
}


  :root {
    --color-button-secondary-background: ${p.button} !important;
    --color-button-secondary-background-focus: ${p.button} !important;
    --color-button-secondary-background-hover: ${p.button} !important;

    --color-neutral-background: transparent !important;
    --color-neutral-background-container: transparent !important;
    --color-neutral-background-container-hover: transparent !important;
    --color-neutral-background-container-strong: transparent !important;
    --color-neutral-background-container-strong-hover: transparent !important;
    --color-neutral-background-gilded: transparent !important;
    --color-neutral-background-gilded-hover: transparent !important;
    --color-neutral-background-highlighted: transparent !important;
    --color-neutral-background-highlighted-strong: transparent !important;
    --color-neutral-background-hover: transparent !important;
    --color-neutral-background-medium: transparent !important;
    --color-neutral-background-pinned: transparent !important;
    --color-neutral-background-selected: transparent !important;
    --color-neutral-background-strong: transparent !important;
    --color-neutral-background-strong-hover: transparent !important;
    --color-neutral-background-weak: transparent !important;
    --color-neutral-background-weak-hover: transparent !important;

    --color-secondary-background: transparent !important;
    --color-secondary-background-hover:  transparent !important;
    --color-secondary-background-selected:  transparent !important;

    --color-tone-1: ${p.white} !important;
  }

}
  '';
}
