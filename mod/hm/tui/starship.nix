# TODO nerd font symbol for nix shell
{
  lib,
  prompt_sym,
  p,
  ...
}:{
  programs.starship = {
    enable = true;
    enableBashIntegration = true;
    enableFishIntegration = false;
    enableZshIntegration = false;
    enableNushellIntegration = true;

    enableTransience = true;


    settings = {
      add_newline = true;
      continuation_prompt = "  ";

      character.error_symbol = lib.mkDefault "[${prompt_sym}](red)";

      directory = {
        read_only = " ";
        truncation_length = 10;
        truncate_to_repo = true; # truncates directory to root folder if in git repo
      };

      cmd_duration = {
        min_time = 60;
        format = "[$duration]($style) ";
        style = "bold " + p.yellow;
      };

      hostname = {
        ssh_only = true;
        ssh_symbol = "";
        format = "[$ssh_symbol $hostname]($style) at ";
      };


      package.symbol = " ";
      package.style = "bold " + p.yellow;

      # rust.symbol = "";
      rust.disabled = true;


      # c.symbol = "";
      c.disabled = true;

      nix_shell = {
        symbol = "󱄅";
        pure_msg = "";
        impure_msg = "";
      };


      git_metrics.disabled = false;
      git_branch.symbol = "";
      git_status = {
        format = "(\[$all_status$ahead_behind\]($style) )";
        ahead = "\${count}";
        behind = "\${count}";
        diverged = "\${ahead_count}\${behind_count}";
      };
    };
  };
}
