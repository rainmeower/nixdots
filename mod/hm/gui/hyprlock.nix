{
  config,
  font_name,
  rounding,
  flake_dir,
  p,
  ...
}:{
  programs.hyprlock = {
    enable = true;

      settings = {
        general = {
          grace = 0;
          hide_cursor = true;
          no_fade_out = false;
        };

        auth.fingerprint.enabled = false;

        animations = {
          enabled = false;
          # bezier = "linear, 1, 1, 0, 0";
          # animation = [
          #   "fade, 1, 10, linear"
          # ];
        };

        background = [
          {
            monitor = "";
            # path = # TODO symlink in the wallpaper set script?
            path = flake_dir + "/stuff/wallpapers/clouds.jpg";



            blur_passes = "0";
            # contrast = "0.8916";
            # brightness = "0.8916";
            # vibrancy = "0.8916";
            # vibrancy_darkness = "0.0";
          }
        ];
        input-field = [
          {
            monitor = "";
            size = "240, 55";
            outline_thickness = "0";
            dots_size = "0.2";
            dots_spacing = "0.2";
            dots_center = "true";
            outer_color = "rgba(255, 255, 255, 0)";
            inner_color = "rgba(255, 255, 255, 0.1)";
            font_color = "rgb(200, 200, 200)";
            fade_on_empty = "false";
            font_family = font_name;
            placeholder_text = 
              "<i><span foreground=\"##ffffff99\"> ${if rounding then "" else ""} </span></i>";
            hide_input = false;
            position = "0, -90";
            halign = "center";
            valign = "center";


            blur_passes = 2;
            blur_radius = 4;
            # contrast = "0.8916";
            # brightness = "0.8916";
            # vibrancy = "0.8916";
            # vibrancy_darkness = "0.0";
          }
        ];
        label = [
          {
            monitor = "";
            text = "cmd[update:1000] echo \"<span>$(date +\"%I:%M\")</span>\"";
            color = p.fg;
            font_size = 60;
            font_family = font_name;
            position = "0, 60";
            halign = "center";
            valign = "center";
          }

          {
            monitor = "";
            text = "cmd[update:1000] echo -e \"$(date +\"%A, %B %d\")\"";
            color = p.fg;
            font_size = 18;
            font_family = font_name;
            position = "0, 0";
            halign = "center";
            valign = "center";
          }
        ];
      };
    };
}
