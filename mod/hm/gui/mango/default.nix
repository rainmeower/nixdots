{
	inputs,
	lib,
  flake_dir,
  wm,
  self,
  theme,
  pkgs,
	...
}: let
  col = import (self + /theme/${builtins.elemAt (builtins.split "_" theme) 0}/colors.nix);
  gaps = 10;
  h = lib.removePrefix "#";
  portals = with pkgs; [
    xdg-desktop-portal
    xdg-desktop-portal-wlr
    xdg-desktop-portal-termfilechooser
  ];
in {
  imports = [
    inputs.mango.hmModules.mango
  ];
  config = lib.mkIf (wm == "mango") {
    home.packages = with pkgs; [
      wlr-randr
    ];

    xdg.portal.configPackages = portals;
    xdg.portal.extraPortals = portals;


    wayland.windowManager.mango = {
      enable = true;

      autostart_sh = # {{{
      /* bash */ ''
        set +e

        wlr-randr --output DP-1 --mode "2560x1440@165.080002" &
        swww-daemon &
        ${flake_dir}/stuff/scripts/swww.sh &
        foot --server &
        vesktop --enable-features=UseOzonePlatform --ozone-platform=wayland &
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
        # force_tearing = true;

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
        new_is_master = true;
        default_mfact = 0.55;
        default_nmaster = 1;
        smartgaps = false; # TODO

# Overview Setting
        hotarea_size = 10;
        enable_hotarea = false;
        ov_tab_mode = 0; # TODO
          overviewgappi = 5; # inner gaps
          overviewgappo = 30; # outer gaps

# Misc
        no_border_when_single = true;
        axis_bind_apply_timeout = 100;
        focus_on_activate = true;
        inhibit_regardless_of_visibility = false;
        sloppyfocus = false; # TODO
          warpcursor = false; # TODO
          focus_cross_monitor = false;
        focus_cross_tag = false;
        enable_floating_snap = false; # TODO
          snap_distance = 30;
        drag_tile_to_tile = true; # TODO
          adaptive_sync = false; # TODO
          cursor_size = 32;
        cursor_theme = "serenity";

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

# layout support:
# tile,scroller,grid,deck,monocle,center_tile,vertical_tile,vertical_scroller
        tagrule = [
          "id:1,layout_name:tile"
          "id:2,layout_name:grid"
          "id:3,layout_name:scroller" # vertical scroller?
          "id:4,layout_name:tile" # deck maybe?
          "id:5,layout_name:monocle"
          "id:6,layout_name:center_tile"
          "id:7,layout_name:vertical_tile"
          "id:8,layout_name:vertical_scroller"
          "id:9,layout_name:vertical_scroller"
        ];

# Key Bindings
# key name refer to `xev` or `wev` command output,
# mod keys name: super,ctrl,alt,shift,none
        bind = [

          "SUPER,G,spawn,wlr-which-key"
            "SUPER,L,spawn,wlr-which-key ~/.config/wlr-which-key/mpc.yaml"


# reload config
            "SUPER+ALT,r,reload_config"

# menu and terminal
            "SUPER,space,spawn,vicinae toggle"
            "SUPER,s,spawn,foot nvim"
            "SUPER,t,spawn,foot"
            "SUPER,c,spawn,foot yazi"

            "SUPER,k,spawn,foot -a 'foot.ncmpcpp' ncmpcpp"

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

# tag switch
#"SUPER,Left,viewtoleft,0"
#"CTRL,Left,viewtoleft_have_client,0"
#"SUPER,Right,viewtoright,0"
#"CTRL,Right,viewtoright_have_client,0"
#"CTRL+SUPER,Left,tagtoleft,0"
#"CTRL+SUPER,Right,tagtoright,0"

            "SUPER,Tab,view,1,0"
            "SUPER,b,view,2,0"
            "SUPER,f,view,3,0"
            "SUPER,d,view,4,0"
            "SUPER,w,view,5,0"
            "SUPER,p,view,6,0"
            "SUPER,y,view,7,0"
            "SUPER,comma,view,8,0"
            "SUPER,v,view,9,0"

# tag: move client to the tag and focus it
# tagsilent: move client to the tag and not focus it
# Alt,1,tagsilent,1
            "SUPER+SHIFT,Tab,tagsilent,1,0"
            "SUPER+SHIFT,b,tagsilent,2,0"
            "SUPER+SHIFT,f,tagsilent,3,0"
            "SUPER+SHIFT,d,tagsilent,4,0"
            "SUPER+SHIFT,w,tagsilent,5,0"
            "SUPER+SHIFT,p,tagsilent,6,0"
            "SUPER+SHIFT,y,tagsilent,7,0"
            "SUPER+SHIFT,Comma,tagsilent,8,0"
            "SUPER+SHIFT,v,tagsilent,9,0"

# monitor switch
#"alt+shift,Left,focusmon,left"
#"alt+shift,Right,focusmon,right"
#"SUPER+Alt,Left,tagmon,left"
#"SUPER+Alt,Right,tagmon,right"

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

# Mouse Button Bindings
# NONE mode key only work in ov mode
        mousebind = [
          "SUPER,btn_left,moveresize,curmove"
#"NONE,btn_middle,togglemaximizescreen,0"
            "SUPER,btn_right,moveresize,curresize"
#"NONE,btn_left,toggleoverview,-1"
#"NONE,btn_right,killclient,0"
        ];

# Axis Bindings
        axisbind = [
          "SUPER,UP,viewtoleft_have_client"
            "SUPER,DOWN,viewtoright_have_client"
        ];

# layer rules
        layerrule = [
          "animation_type_open:zoom,layer_name:vicinae"
          "animation_type_close:zoom,layer_name:vicinae"
        ];

        windowrule = [
          "appid:foot.yazi.filechooser,isfloating:1"
          "appid:foot.ncmpcpp,isfloating:1"
        ];

# env
        env = [
        ];
      };};
    };
  };
}
