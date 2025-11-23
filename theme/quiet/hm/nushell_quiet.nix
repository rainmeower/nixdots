{
  lib,
  theme,
  ...
}: let
  col = import ../colors.nix;
in {
  config = lib.mkIf (theme == "quiet") {

  programs.nushell.extraConfig = /* nu */ ''
    let color_scheme = {
      hints: "${col.grey}"
      search_result: { bg: "${col.blue}" fg: "${col.fg}" }
      shape_garbage: { fg: "${col.bg}" bg: "${col.red}" attr: b}
      shape_filepath: "${col.yellow}"
      shape_directory: "${col.yellow}"
      shape_internalcall: "${col.fg}"
      shape_external: "${col.fg}"
      shape_externalarg: "${col.fg}"
      shape_flag: "${col.fg}"
      shape_keyword: "${col.fg}"
      shape_pipe: "${col.fg}"
    }

    $env.config = {
      color_config: $color_scheme
    }
    '';
  };
}
