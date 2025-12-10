{
  if_theme,
  p,
  ...
}: if_theme "kanso" {
  programs.nushell.extraConfig = /* nu */ ''
    let color_scheme = {
      hints: "${p.gray4}"
      search_result: { bg: "${p.altBlue2}" fg: "${p.fg}" }
      shape_garbage: { fg: "${p.zen_bg0}" bg: "${p.red}" attr: b}
      shape_filepath: "${p.yellow}"
      shape_directory: "${p.yellow}"
      shape_internalcall: "${p.fg}"
      shape_external: "${p.fg}"
      shape_externalarg: "${p.fg}"
      shape_flag: "${p.fg}"
      shape_keyword: "${p.fg}"
      shape_pipe: "${p.fg}"
    }

    $env.config = {
      color_config: $color_scheme
    }
  '';
}
