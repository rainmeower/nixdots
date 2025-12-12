{
  lib,
  config,
  ...
}: lib.mkIf (lib.hasPrefix "kanso" config.theme) {
  console.colors = [
    "090E13" # bg
    "C34043" # red
    "8A9A7B" # green
    "C4B28A" # yellow
    "8BA4B0" # blue
    "938AA9" # violet
    "8ea4a2" # cyan
    "C5C9C7" # fg
    "090E13" # bg
    "C34043" # red
    "8A9A7B" # green
    "C4B28A" # yellow
    "8BA4B0" # blue
    "938AA9" # violet
    "8ea4a2" # cyan
    "C5C9C7" # fg
  ];
}
