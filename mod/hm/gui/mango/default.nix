{
	inputs,
	lib,
  flake_dir,
  wm,
  self,
  theme,
  pkgs,
  userDirs,
  term,
	...
}: let
  col = import (self + /theme/${builtins.elemAt (builtins.split "_" theme) 0}/colors.nix);
  gaps = 10;
  h = lib.removePrefix "#";
  portals = with pkgs; [
    xdg-desktop-portal
    xdg-desktop-portal-wlr
    xdg-desktop-portal-termfilechooser
    xdg-desktop-portal-gtk
    xdg-desktop-portal-gnome
    xdg-desktop-portal-luminous
  ];
in {
  imports = [
    inputs.mango.hmModules.mango
  ];
  config = lib.mkIf (wm == "mango") {
    home.packages = with pkgs; [
      wlr-randr
      slurp
      # grim # broken?
      wayshot
    ];

    xdg.portal.configPackages = portals;
    xdg.portal.extraPortals = portals;


    wayland.windowManager.mango = {
      enable = true;

      autostart_sh = # {{{
      /* bash */ ''
        set +e
        swww-daemon &
        ${flake_dir}/stuff/scripts/swww.sh &

        # wlr-randr --output DP-1 --mode "2560x1440@165.080002" &
        foot --server &
        equibop >/dev/null 2>/dev/null &
        dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=wlroots &

        ps -ef | rg "nata.sh" | sed -e "s/$(whoami)      //" | sed -e "s/ .*//" | xargs kill # clean up previous nata processes
        ${flake_dir}/stuff/nata/nata.sh -c ${flake_dir}/stuff/nata/config.json >/dev/null 2>/dev/null &

      ''; # }}}

# https://codeberg.org/worldspawn/nix/src/branch/main/modules/home-manager/wm/mangowc.nix
      settings = lib.generators.toINIWithGlobalSection {
        listsAsDuplicateKeys = true;
        mkKeyValue = key: value:
          let
          value' = if builtins.isBool value then
          (if value then "1" else "0")
          else
            toString value;
          in "${key}=${value'}";
      } {globalSection = {
        allow_tearing = true;
        xwayland_persistence = false;
        exchange_cross_monitor = true;

        exec-once = "~/.config/mango/autostart.sh";
        blur = true;
        blur_layer = true;
        blur_optimized = true;
        blur_params_num_passes = 2;
        blur_params_radius = 4;
        blur_params_noise = 0;
        blur_params_brightness = 1;
        blur_params_contrast = 0.8;
        blur_params_saturation = 0.7;

        shadows = false;

        border_radius = 0;
        no_radius_when_single = false;
        focused_opacity = 1.0;
        unfocused_opacity = 1.0;

# Animation Configuration(support type:zoom,slide)
# tag_animation_direction: 0-horizontal,1-vertical
        animations = true;
        layer_animations = true;
        animation_type_open = "zoom";
        animation_type_close = "zoom";
        animation_fade_in = 1;
        animation_fade_out = 1;
        tag_animation_direction = 0;
        zoom_initial_ratio = 0.3;
        zoom_end_ratio = 0.3;
        fadein_begin_opacity = 1.0;
        fadeout_begin_opacity = 0.3;
        animation_duration_move = 250;
        animation_duration_open = 350;
        animation_duration_tag = 0;
        animation_duration_close = 1200;
        animation_duration_focus = 0;
        animation_curve_open = "0.46,1.0,0.29,1";
        animation_curve_move = "0.46,1.0,0.29,1";
        animation_curve_tag = "0.46,1.0,0.29,1";
        animation_curve_close = "0.08,0.92,0,1";
        animation_curve_focus = "0.46,1.0,0.29,1";

# Scroller Layout Setting
        scroller_structs = gaps;
        scroller_default_proportion = 0.5;
        scroller_default_proportion_single = 0.5;
        scroller_proportion_preset = "0.333,0.5,0.667";
        scroller_focus_center = false; # TODO
        scroller_prefer_center = false;
        edge_scroller_pointer_focus = true; # TODO

# Master-Stack Layout Setting
        new_is_master = false;
        default_mfact = 0.5;
        default_nmaster = 1;
        smartgaps = false;

# Overview Setting
        hotarea_size = 10;
        enable_hotarea = false;
        ov_tab_mode = 0; # TODO
        overviewgappi = 5; # inner gaps
        overviewgappo = 30; # outer gaps

# Misc
        allow_shortcuts_inhibit = true;
        no_border_when_single = true;
        axis_bind_apply_timeout = 10;
        focus_on_activate = true;
        inhibit_regardless_of_visibility = false;
        sloppyfocus = false;
        warpcursor = true;
        focus_cross_monitor = true;
        focus_cross_tag = false;
        enable_floating_snap = false;
        snap_distance = 30;
        drag_tile_to_tile = true;
        adaptive_sync = false;
        cursor_size = 20;
        cursor_theme = "Bibata Modern Classic";
        cursor_hide_timeout = 1;

# keyboard
        repeat_rate = 25;
        repeat_delay = 300;
        numlockon = false;
        xkb_rules_layout = "us";

# Trackpad
# need relogin to make it apply
        disable_trackpad = true;

# mouse
# need relogin to make it apply
        mouse_natural_scrolling = false;
        accel_profile = 0;
        accel_speed = 0.0;

# Appearance
        gappih = gaps;
        gappiv = gaps;
        gappoh = gaps;
        gappov = gaps;
        scratchpad_width_ratio = 0.67; # i swear its just rounding 0.66...
          scratchpad_height_ratio = 0.9;
        borderpx = 3;
        # TODO function for these
        rootcolor = "0xff0000ff";
        bordercolor = "0x00000000";
        focuscolor = "0x" + h col.accent + "ff";
        maximizescreencolor = "0x" + h col.pink + "ff";
        urgentcolor = "0x" + h col.red + "ff";
        scratchpadcolor = "0x85b5baff";
        globalcolor = "0xaca1cfff";
        overlaycolor = "0x90b99fff";

# center_tile deck grid monocle right_tile scroller tile vertical_deck vertical_grid vertical_scroller vertical_spiral vertical_tile
        tagrule = [
          "id:1,layout_name:tile"
          "id:2,layout_name:grid"
          "id:3,layout_name:scroller" # vertical scroller?
          "id:4,layout_name:tile" # deck maybe?
          "id:5,layout_name:vertical_spiral"
          "id:6,layout_name:center_tile"
          "id:7,layout_name:vertical_scroller,monitor_name:DP-3"
          "id:8,layout_name:monocle"
          "id:9,layout_name:vertical_tile"
        ];

# Key Bindings
# key name refer to `xev` or `wev` command output,
# mod keys name: super,ctrl,alt,shift,none
        bind = [

          "NONE,XF86AudioRaiseVolume,spawn_shell,wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%+"
          "NONE,XF86AudioLowerVolume,spawn_shell,wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%-"

          "SUPER,G,spawn,wlr-which-key"
          "SUPER,L,spawn,wlr-which-key ~/.config/wlr-which-key/mpc.yaml"
          "SUPER+SHIFT,L,spawn,wlr-which-key -k l ${userDirs.extraConfig.XDG_CONFIG_HOME}/wlr-which-key/mpc.yaml"

# reload config
            "SUPER+ALT,r,reload_config"

# menu and terminal
            "SUPER,space,spawn,vicinae toggle"
            "SUPER,s,spawn,foot nvim"
            "SUPER,t,spawn,foot"
            "SUPER,c,spawn,foot -a 'foot.yazi.isterm' yazi"
            # goto most recent download
            ''SUPER+SHIFT,c,spawn_shell, footclient --hold nu -e "let f = ^ls ${userDirs.download} -At | head -n 1; yazi ${userDirs.download}/(\$f)"''


            "SUPER,k,spawn,${flake_dir}/stuff/scripts/keys/ncmpcpp.sh"

            "SUPER,z,spawn,zen -p meow"
            "SUPER+SHIFT,z,spawn,zen -p media"

# exit
            "SUPER+ALT,q,quit"
            "SUPER,o,killclient,"

# switch window focus
# "ALT,Tab,focusstack,next"
            "SUPER,h,focusdir,left"
            "SUPER,i,focusdir,right"
            "SUPER,e,focusdir,up"
            "SUPER,a,focusdir,down"

# swap window
            "SUPER+SHIFT,h,exchange_client,left"
            "SUPER+SHIFT,i,exchange_client,right"
            "SUPER+SHIFT,h,exchange_client,up"
            "SUPER+SHIFT,a,exchange_client,down"

# switch window status
            "SUPER,Period,toggleglobal,"
            "SUPER,Return,toggleoverview,"
# "SUPER,f,togglefloating,"
            "SUPER,m,togglemaximizescreen,"
            "SUPER+SHIFT,m,togglefullscreen,"
# "SUPER+CTRL,m,togglefakefullscreen,"
            "SUPER+SHIFT,Return,toggleoverlay,"
#"SUPER,i,minimized,"
#"SUPER+SHIFT,I,restore_minimized"
#"ALT,z,toggle_scratchpad"

# scroller layout
# "SUPER,m,set_proportion,1.0"
            "SUPER,9,switch_proportion_preset,"

# switch layout
            "SUPER,semicolon,switch_layout"

            "SUPER,Tab,  view,1,0"
            "SUPER,b,    view,2,0"
            "SUPER,f,    view,3,0"
            "SUPER,d,    view,4,0"
            "SUPER,w,    view,5,0"
            "SUPER,p,    view,6,0"
            "SUPER,y,    view,7,0"
            "SUPER,comma,view,8,0"
            "SUPER,v,    view,9,0"

            "SUPER+SHIFT,Tab,tagsilent,1,0"
            "SUPER+SHIFT,b,tagsilent,2,0"
            "SUPER+SHIFT,f,tagsilent,3,0"
            "SUPER+SHIFT,d,tagsilent,4,0"
            "SUPER+SHIFT,w,tagsilent,5,0"
            "SUPER+SHIFT,p,tagsilent,6,0"
            "SUPER+SHIFT,y,tagsilent,7,0"
            "SUPER,less,   tagsilent,8,0"
            "SUPER+SHIFT,v,tagsilent,9,0"

            # toggle windows from tag
            "SUPER,bracketleft,spawn,mmsg -s -t 1^"
            "SUPER,f1,          spawn,mmsg -s -t 2^"
            "SUPER,f2,          spawn,mmsg -s -t 3^"
            "SUPER,f3,          spawn,mmsg -s -t 4^"
            "SUPER,f4,          spawn,mmsg -s -t 5^"
            "SUPER,bracketright,spawn,mmsg -s -t 6^"
            # "SUPER,f6,view,7,0"
            "SUPER,f9,          spawn,mmsg -s -t 8^"
            "SUPER,f10,         spawn,mmsg -s -t 9^"

# gaps
#"ALT+SHIFT,X,incgaps,1"
#"ALT+SHIFT,Z,incgaps,-1"
#"ALT+SHIFT,R,togglegaps"

# movewin
#"CTRL+SHIFT,Up,movewin,+0,-50"
#"CTRL+SHIFT,Down,movewin,+0,+50"
#"CTRL+SHIFT,Left,movewin,-50,+0"
#"CTRL+SHIFT,Right,movewin,+50,+0"

# resizewin
#"CTRL+ALT,Up,resizewin,+0,-50"
#"CTRL+ALT,Down,resizewin,+0,+50"
#"CTRL+ALT,Left,resizewin,-50,+0"
#"CTRL+ALT,Right,resizewin,+50,+0"
            ];

        mousebind = [
          "SUPER,btn_left,moveresize,curmove"
            "SUPER,btn_right,moveresize,curresize"
        ];

        axisbind = [
          "SUPER,UP,viewtoleft_have_client"
            "SUPER,DOWN,viewtoright_have_client"
        ];

        layerrule = [
          "animation_type_open:zoom,layer_name:vicinae"
          "animation_type_close:zoom,layer_name:vicinae"
          # "noblur:1,layer_name:slurp"
        ];

        windowrule = [
          "appid:foot.yazi.filechooser,width:1080,height:1080,isnoborder:1,isfloating:1"
          "appid:foot.ncmpcpp,foot.yazi.filechooser,width:720,height:1080,isnoborder:1,isfloating:1"
          "appid:steam_app_*,force_tearing:1,isfullscreen:1,noblur:1"
          "appid:foot.yazi.isterm,isterm:1"
          "appid:swayimg,isnoanimation:1"
          "appid:equibop,appid:vesktop,tags:2,isopensilent:1"
          # TODO `isterm` + emacs/yazi?
        ];


        monitorrule = [
          "DP-1, 0.5, 1, scroller, 0, 1, 0, 0, 2560, 1440, 165.080002"
          "DP-3, 0.5, 1, vertical_scroller, 3, 1, 3000, 0, 2560, 1440, 74.971001"
        ];

        # env = [
        #   "ELECTRON_OZONE_PLATFORM_HINT=auto"
        #   "_JAVA_AWT_WM_NONREPARENTING=1"
        #
        #   "GDK_BACKEND=wayland"
        #   "CLUTTER_BACKEND=wayland"
        #   "MOZ_ENABLE_WAYLAND=1"
        #   "NIXOS_OZONE_WL=1"
        #   "OZONE_PLATFORM=wayland"
        #   "QT_QPA_PLATFORM=wayland"
        #   "QT_WAYLAND_DISABLE_WINDOWDECORATION=1"
        #   "SDL_VIDEODRIVER=wayland,x11"
        #
        #   "XDG_SESSION_TYPE=wayland"
        #   # mango or mangowc?
        #   # "XDG_CURRENT_DESKTOP=mango"
        #   # "XDG_SESSION_DESKTOP=mango"
        # ];
      };};
    };
  };
}
