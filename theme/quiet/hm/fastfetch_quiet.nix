{
  lib,
  theme,
  username,
  ...
}: let
  col = import ../colors.nix;
in {
  config = lib.mkIf (theme == "quiet") {
    programs.fastfetch = {
      enable = true;

      settings = {
        logo = {
          source = "nixos_small";
          padding = {
            left = 0;
            right = 2;
          };
        };

        display = {
          separator = " ";
        };

        modules = [
        {
          type = "command";
          key = "let ${username}: Host";
          keyColor = "${col.accent}";
          text = "echo '= {'";
        }
        {
          type = "os";
          key = "  distro:";
          format = "\"{2}\",";
          keyColor = "${col.accent}";
        }
        {
          type = "kernel";
          key = "  kernel:";
          format = "\"{2}\",";
          keyColor = "${col.accent}";
        }
        {
          type = "packages";
          key = "  pkgs:";
          format = "{1},";
          keyColor = "${col.accent}";
        }
        {
          type = "command";
          key = "  wm:";
          keyColor = "${col.accent}";
          # text = "echo ${config.wm}";
          text = "echo '\"niri\",";
        }
        {
          type = "command";
          key = "  term:";
          keyColor = "${col.accent}";
          text = "echo '\"ghostty\",'";
        }
        {
          type = "command";
          key = "  shell:";
          keyColor = "${col.accent}";
          text = "echo '\"nushell\",'";
        }
        {
          type = "cpu";
          format = "\"{1}\",";
          key = "  cpu:";
          keyColor = "${col.accent}";
        }
        {
          type = "gpu";
          format = "\"{2}\",";
          key = "  gpu:";
          keyColor = "${col.accent}";
        }
        {
          type = "command";
          key = "  age:";
          keyColor = "${col.accent}";
          text = "birth_install=$(stat -c %W /); current=$(date +%s); time_progression=$((current - birth_install)); days_difference=$((time_progression / 86400)); echo -n $days_difference; echo ','";
        }
        {
          type = "uptime";
          key = "  uptime:";
          format = "{3},";
          keyColor = "${col.accent}";
        }
        {
          type = "command";
          key = "  theme:";
          keyColor = "${col.accent}";
          text = "echo ${theme}";
        }
        {
          type = "command";
          key = " ";
          padding.left = -2;
          text = "echo '};'";
        }
        ];
      };
    };
  };
}
