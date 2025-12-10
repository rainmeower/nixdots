{
  font_name,
  rounding,
  p,
  ...
}:{
  home.file.".config/usercontent/duckduckgo.css".text = /* css */ ''
@-moz-document domain("duckduckgo.com") {
* {
  font-family: ${font_name} !important;
  ${if !rounding then "border-radius: 0px !important;" else null}
}

html, body, .body--home, .site-wrapper, .region__body, .badge-link, .module--carousel__image-wrapper, .result__image, .vertical--map__sidebar, .vertical--map__sidebar__header, .page-chrome_newtab, .zci--type--tiles:not(.is-fallback).is-full-page.is-expanded, .zci--type--tiles:not(.is-fallback).is-full-page.is-expanded .metabar:not(.is-stuck), .is-link-style-exp .header-wrap  {
  background-color: transparent !important;
}

:root {
  --font: ${font_name} !important;
  --theme-col-txt-snippet: ${p.fg} !important;
  --theme-col-txt-title-visited: ${p.purple} !important;
  --theme-col-txt-title: ${p.blue} !important;

  --sds-color-background-accent-01: ${p.accent} !important;

  --sds-color-text-accent-01: ${p.blue} !important;
  --sds-color-text-background-01: ${p.gray} !important;
  --sds-color-text-link-02-hover: ${p.gray} !important;
  --sds-color-background-01: ${p.button_trans} !important;
  --sds-color-text-on-color: ${p.button} !important;

  --theme-col-txt-card-body: ${p.gray} !important;

}

.header--aside__item, .TccjmKV6RraCaCw5L9gd,
.ph1UFslrkUMqoYJEtp3t.hnKIeVb9Fi3YMCZAeQvR::before,
.ph1UFslrkUMqoYJEtp3t.hnKIeVb9Fi3YMCZAeQvR::after {
  display: none !important;
}
.jyBaPv1HPGOoWrXSAjiu .T265XEcezvjUhK71U8pN {
  box-shadow: none !important;
}
._2iQrmxmcSVuOHpCus2L._2iQrmxmcSVuOHpCus2L {
  background-color: transparent !important;
}
.header-wrap {
  background-color: transparent !important;
  box-shadow: none !important;
}

/* "protected" button */
.c1GwqC__eRoEs0cLTIfL:first-child {
  display: none !important;
}

/* "helpful search" panel */
.ZvcE0ToM7Sfi6iwk7KiJ {
  display: none !important;
}

/* "more images" line */
.HHJGgzrZRmw9obWw1QS1::after, .HHJGgzrZRmw9obWw1QS1::before {
  border-top: 1px solid ${p.button} !important;
}
/* "more images" button */
.HHJGgzrZRmw9obWw1QS1 > :first-child {
  border: none !important;
}

  }
  '';
}
