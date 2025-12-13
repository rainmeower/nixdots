{
  lib,
  prompt_sym,
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
      };

      hostname = {
        ssh_only = true;
        ssh_symbol = "";
        format = "[$ssh_symbol $hostname]($style) at ";
      };

      # rust.symbol = " ";
      rust.disabled = true;

      git_branch.symbol = "";
      git_metrics.disabled = false;
      git_status = {
        format = "(\[$all_status$ahead_behind\]($style) )";
        ahead = "\${count}";
        behind = "\${count}";
        diverged = "\${ahead_count}\${behind_count}";
      };

      custom.yazi = {
        description = "Indicate when the shell was launched by `yazi`";
        symbol = "󰇥 ";
        when = '' test -n "$YAZI_LEVEL" '';

      format = lib.concatStrings [
        "\${custom.yazi}"
        "$character"
      ];
      right_format = lib.concatStrings [
        "$all"
      ];
      };

    };
  };
}
