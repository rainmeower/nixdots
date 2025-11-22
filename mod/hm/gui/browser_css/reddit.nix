{
  config,
  lib,
  theme,
  ...
}:
let
  theme_trimmed = lib.strings.removeSuffix "_zen" theme;
  col = import ../../../../theme/${theme_trimmed}/colors.nix;
in {
  home.file.".config/usercontent/nixos.css".text = /* css */ ''
@-moz-document domain("www.reddit.com") {
* {
  color: ${col.fg} !important;
}

.left-sidebar, .mt-md, .mt-lg, .mb-0 {
  display: none !important;
}

:root {
--color-button-secondary-background: ${col.button} !important;
--color-button-secondary-background-focus: ${col.button} !important;
--color-button-secondary-background-hover: ${col.button} !important;

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

  --color-tone-1: ${col.white} !important;
}

}
  '';
}
