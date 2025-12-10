{
  font_name,
  p,
  ...
}:{
  home.file.".config/usercontent/nixos.css".text = /* css */ ''
@-moz-document domain("wiki.nixos.org") {
* {
  font-family: ${font_name} !important;
  background: transparent !important;
}

:root {
	--font-size-medium: 20px !important;
  --color-base: ${p.fg} !important;
  --color-emphasized: ${p.fg} !important;
  --color-progressive: ${p.blue} !important;
  --color-visited: ${p.purple} !important;
}

.vector-sticky-pinned-container::after { /* white gradient thing */
  display: none !important;
}

}
  '';
}
