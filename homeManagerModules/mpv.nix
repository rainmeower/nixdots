{ config, pkgs, ... }: {
  programs.mpv = {
    enable = true;
    bindings = {
      h = "seek -5";
      i = "seek 5";
    };

    config = {

      background-color = "#24273a";
      osd-back-color = "#181926";
      osd-border-color = "#181926";
      osd-color = "#cad3f5";
      osd-shadow-color = "#24273a";
      osd-font = "mononoki nerd font mono";

      script-opts-append = [
        "stats-border_color=30201e"
        "stats-font_color=f5d3ca"
        "stats-plot_bg_border_color=f8bdb7"
        "stats-plot_bg_color=30201e"
        "stats-plot_color=f8bdb7"
        "uosc-color=foreground=cad3f5,foreground_text=363a4f,background=24273a,background_text=cad3f5,curtain=1e2030,success=a6da95,error=ed8796"
      ];

      reset-on-next-file = "all";
      keep-open = true;
    };

    scriptOpts = {
      uosc = {

        # Display style of current position. available: line, bar
        timeline_style = "line";
        # Line display style config
        timeline_line_width = 2;
        # Timeline size when fully expanded, in pixels, 0 to disable
        timeline_size = 30;
        # Comma separated states when element should always be fully visible.
        # Available: paused, audio, image, video, idle, windowed, fullscreen
        # timeline_persistency = 
        # Top border of background color to help visually separate timeline from video
        timeline_border = 1;
        # When scrolling above timeline, wheel will seek by this amount of seconds.
        # Default uses fast seeking. Add `!` suffix to enable exact seeks. Example: `5!`
        timeline_step = 5;
        # Render cache indicators for streaming content
        timeline_cache = true;


        progress = "always";
        progress_size = 2;
        progress_line_width = 20;



        controls = "menu,gap,subtitles,<has_many_audio>audio,<has_many_video>video,<has_many_edition>editions,<stream>stream-quality,gap,space,speed,space,shuffle,loop-playlist,loop-file,gap,prev,items,next,gap,fullscreen";
        controls_size = 32;
        controls_margin = 8;
        controls_spacing = 2;
        # controls_persistency = 



        volume = "right";
        volume_size = 40;
        volume_border = 1;
        volume_step = 1;
        # volume_persistency = 

        # Playback speed widget: mouse drag or wheel to change, click to reset
        speed_step = 0.1;
        speed_step_is_factor = false;
        # speed_persistency = 

        # Controls all menus, such as context menu, subtitle loader/selector, etc
        menu_item_height = 36;
        menu_min_width = 260;
        menu_padding = 4;
        # Determines if `/` or `ctrl+f` is required to activate the search, or if typing
        # any text is sufficient.
        # When enabled, you can no longer toggle a menu off with the same key that opened it, if the key is a unicode character.
        menu_type_to_search = true;





        # Top bar with window controls and media title
        # Can be: never, no-border, always
        top_bar = "no-border";
        top_bar_size = 40;
        # Can be: `no` (hide), left or right
        top_bar_controls = "right";
        # Can be: `no` (hide), `yes` (inherit title from mpv.conf), or a custom template string
        top_bar_title = true;
        # Template string to enable alternative top bar title. If alt title matches main title,
        # it'll be hidden. Tip: use `${media-title}` for main, and `${filename}` for alt title.
        # top_bar_alt_title = 
        # Can be:
        #   `below`   = > display alt title below the main one
        #   `toggle`  = > toggle the top bar title text between main and alt by clicking
        #               the top bar, or calling `toggle-title` binding
        top_bar_alt_title_place = "below";
        # Flash top bar when any of these file types is loaded. Available: audio,video,image,chapter
        top_bar_flash_on = "video,audio";
        # top_bar_persistency = 

        # Window border drawn in no-border mode
        window_border_size = 1;

        # If there's no playlist and file ends, load next file in directory
        # Uses `load_types` config below to determine what type of file to load next.
        # When enabled, usoc will set mpv config `keep-open` to `yes`, and `keep-open-pause` to `no`.
        autoload = false;
        # Enable uosc's playlist/directory shuffle mode
        # This simply makes the next selected playlist or directory item be random, just
        # like any other player in the world. It also has an easily togglable control button.
        shuffle = false;




        # Scale the interface by this factor
        scale = 1;
        # Scale in fullscreen
        scale_fullscreen = 1;
        # Adjust the text scaling to fit your font
        font_scale = 1;
        # Border of text and icons when drawn directly on top of video
        text_border = 0.6;
        # Border radius of buttons, menus, and all other rectangles
        border_radius = 4;
        # A comma delimited list of color overrides in RGB HEX format. Defaults:
        # foreground = ffffff,foreground_text=000000,background=000000,background_text=ffffff,curtain=111111,success=a5e075,error=ff616e
        # color = 
        # A comma delimited list of opacity overrides for various UI element backgrounds and shapes.
        # This does not affect any text, which is always rendered fully opaque. Defaults:
        # timeline = 0.9,position=1,chapters=0.8,slider=0.9,slider_gauge=1,controls=0,speed=0.6,menu=1,submenu=0.4,border=1,title=1,tooltip=1,thumbnail=1,curtain=0.8,idle_indicator=0.8,audio_indicator=0.5,buffering_indicator=0.3,playlist_position=0.8
        # opacity = 
        # A comma delimited list of features to refine at a cost of some performance impact.
        # text_width - Use a more accurate text width measurement that measures each text string individually
        #              instead of just measuring the width of known letters once and adding them up.
        # sorting    - Use filename sorting that handles non-english languages better, especially asian ones.
        #              At the moment, this is only available on windows, and has no effect on other platforms.
        # refine = 
        # Duration of animations in milliseconds
        animation_duration = 100;
        # Execute command for background clicks shorter than this number of milliseconds, 0 to disable
        # Execution always waits for `input-doubleclick-time` to filter out double-clicks
        click_threshold = 0;
        click_command = "cycle pause; script-binding uosc/flash-pause-indicator";
        # Flash duration in milliseconds used by `flash-{element}` commands
        flash_duration = 1000;
        # Distances in pixels below which elements are fully faded in/out
        proximity_in = 40;
        proximity_out = 120;
        # Use only bold font weight throughout the whole UI
        font_bold = false;
        # One of `total`, `playtime-remaining` (scaled by the current speed), `time-remaining` (remaining length of file)
        destination_time = "playtime-remaining";
        # Display sub second fraction in timestamps up to this precision
        time_precision = 0;
        # Display stream's buffered time in timeline if it's lower than this amount of seconds, 0 to disable
        buffered_time_threshold = 60;
        # Hide UI when mpv autohides the cursor. Timing is controlled by `cursor-autohide` in `mpv.conf` (in milliseconds).
        autohide = false;
        # Can be: flash, static, manual (controlled by flash-pause-indicator and decide-pause-indicator commands)
        pause_indicator = "flash";
        # Sizes to list in stream quality menu
        stream_quality_options = "4320,2160,1440,1080,720,480,360,240,144";
        # Types to identify media files
        video_types = "3g2,3gp,asf,avi,f4v,flv,h264,h265,m2ts,m4v,mkv,mov,mp4,mp4v,mpeg,mpg,ogm,ogv,rm,rmvb,ts,vob,webm,wmv,y4m";
        audio_types = "aac,ac3,aiff,ape,au,cue,dsf,dts,flac,m4a,mid,midi,mka,mp3,mp4a,oga,ogg,opus,spx,tak,tta,wav,weba,wma,wv";
        image_types = "apng,avif,bmp,gif,j2k,jp2,jfif,jpeg,jpg,jxl,mj2,png,svg,tga,tif,tiff,webp";
        subtitle_types = "aqt,ass,gsub,idx,jss,lrc,mks,pgs,pjs,psb,rt,sbv,slt,smi,sub,sup,srt,ssa,ssf,ttxt,txt,usf,vt,vtt";
        playlist_types = "m3u,m3u8,pls,url,cue";
        # Type pools used by file navigation and `autoload` to determine what type of file to load next
        # Available: video,audio,image,playlist,same. `same` means the same type pool (not just extension) as currently open file.
        load_types = "video,audio,image";
        # Default open-file menu directory. Use `{drives}` to open drives menu on windows (defaults to `/` on unix).
        default_directory = "~/";
        # List hidden files when reading directories. Due to environment limitations, this currently only hides
        # files starting with a dot. Doesn't hide hidden files on windows (we have no way to tell they're hidden).show_hidden_files = no
        # Move files to trash (recycle bin) when deleting files. Dependencies:
        # - Linux: `sudo apt install trash-cli`
        # - MacOS: `brew install trash`
        use_trash = true;
        # Adjusted osd margins based on the visibility of UI elements
        adjust_osd_margins = true;

        # Adds chapter range indicators to some common chapter types.
        # Additionally to displaying the start of the chapter as a diamond icon on top of the timeline,
        # the portion of the timeline of that chapter range is also colored based on the config below.
        #
        # The syntax is a comma-delimited list of `{type}:{color}` pairs, where:
        # `{type}`  = > range type. Currently supported ones are:
        #   - `openings`, `endings`  = > anime openings/endings
        #   - `intros`, `outros`  = > video intros/outros
        #   - `ads`  = > segments created by sponsor-block software like https://github.com/po5/mpv_sponsorblock
        # `{color}`  = > an RGB(A) HEX color code (`rrggbb`, or `rrggbbaa`)
        #
        # To exclude marking any of the range types, simply remove them from the list.
        chapter_ranges = "openings:30abf964,endings:30abf964,ads:c54e4e80";
        # Add alternative lua patterns to identify beginnings of simple chapter ranges (except for `ads`)
        # Syntax: `{type}:{pattern}[,{patternN}][;{type}:{pattern}[,{patternN}]]`
        chapter_range_patterns = "openings:オープニング;endings:エンディング";

        # Localization language priority from highest to lowest.
        # Also controls what languages are fetched by `download-subtitles` menu.
        # Built in languages can be found in `uosc/intl`.
        # `slang` is a keyword to inherit values from `--slang` mpv config.
        # Supports paths to custom json files: `languages = ~~/custom.json,slang,en`
        languages = "slang,en";
        # By default, subtitles are downloaded into the directory of currently opened file.
        # If the file is being played from a URL, we use this directory instead (expands to `{mpv_config_dir}/subtitles`)
        # Prefix the path with `!` to force all subtitles to be saved there. Example: `!~~/subtitles`
        # subtitles_directory = ~~/subtitles

        # A comma separated list of element IDs to disable. Available IDs:
        #   window_border, top_bar, timeline, controls, volume,
        #   idle_indicator, audio_indicator, buffering_indicator, pause_indicator
        # disable_elements = 

        # List of mpv.conf properties respected by uosc:
        # osd-font, osd-playlist-entry, slang
      };
    };
    scripts = [
      pkgs.mpvScripts.uosc
    ];
  };
  home.file.".config/mpv/scripts/webm.lua".source = ../stuff/webm.lua;
}
