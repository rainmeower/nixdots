{
  font_name,
  lib,
  theme,
  username,
  userDirs,
  ...
}: let
  theme_trimmed = lib.strings.removeSuffix "_zen" theme;
  col = import ../../../../theme/${theme_trimmed}/colors.nix;
  dir = userDirs.extraConfig.XDG_CONFIG_HOME + "/usercontent";
in {
  home.file.".zen/meow/chrome/userContent.css".text = /* css */ ''
@import "${dir}/codeberg.css";
@import "${dir}/duckduckgo.css";
@import "${dir}/github.css";
@import "${dir}/gitlab.css";
@import "${dir}/monkeytype.css";
@import "${dir}/nixos.css";
@import "${dir}/sourcehut.css";
@import "${dir}/wikipedia.css";
@import "${dir}/reddit.css";
@import "${dir}/stackoverflow.css";
@import "${dir}/crates.css";

*{ scrollbar-width: none; }

:root {
  --tridactyl-bg: ${col.bg} !important;
  --tridactyl-fg: ${col.fg} !important;
  --tridactyl-cmdl-bg: ${col.bg} !important;
  --tridactyl-photon-colours-warning-background-color: ${col.accent} !important;
  --tridactyl-photon-colours-theme-highlight-lightorange: ${col.bg} !important;
  --tridactyl-url-fg: ${col.accent} !important;
  --tridactyl-photon-colours-accent-1: ${col.accent} !important;
  --tridactyl-of-fg: ${col.bg} !important;
  --tridactyl-hintspan-fg: transparent !important;
  --tridactyl-photon-colours-cm-cursor: transparent !important;

  --ShinigamiEyesTFriendly: ${col.green} !important;
  --ShinigamiEyesTransphobic:${col.red} !important;
}

:root #cmdline_iframe {
  left: 25% !important;
  width: 50% !important;
  box-shadow: none !important;
  font-size: 22px !important;
}

:root #command-line-holder {
  border: none !important;
}

#completions {
  font-family: ${font_name} !important;
  font-size: 22px !important;

}

#completions .sectionHeader {
  backgroup: transparent !important;
  height: 0px !important;
  font-size: 0px !important;

}

input {
  font-size: 22px !important;
  color: var(--tridactyl-fg) !important;
}

#command-line-holder {
  font-size: 0px !important;
}


span.TridactylHint {
  font-family: ${font_name} !important;
  font-weight: bold !important;
  color: var(--tridactyl-bg) !important;
  background-color: ${col.accent} !important;
  border-color: none !important;
  border-width: none !important;
  border-radius: 3px !important;

}

.TridactylStatusIndicator {
  display: none !important;
}
'';
}
