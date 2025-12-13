{
  config,
  rounding,
  userDirs,
  ...
}:{
  programs.ncmpcpp = {
    enable = true;
    bindings = [
      { key = "a"; command = "scroll_down"; }
      { key = "e"; command = "scroll_up"; }
      { key = "h"; command = "previous_column"; }
      { key = "i"; command = "next_column"; }
      { key = "ctrl-a"; command = "page_down"; }
      { key = "ctrl-e"; command = "page_up"; }
      { key = "("; command = "previous"; }
      { key = ")"; command = "next"; }
      { key = "enter"; command = "play_item"; }
      { key = "m"; command = "next_found_item"; }
      { key = "M"; command = "previous_found_item"; }
      { key = " "; command = "pause"; }
    ];
    settings = {
      ncmpcpp_directory =
        userDirs.extraConfig.XDG_CONFIG_HOME + "/ncmpcpp";
      lyrics_directory =
        userDirs.extraConfig.XDG_DATA_HOME + "/mpd/lyrics";
      mpd_music_dir =
        userDirs.music;

      mpd_host = "localhost";
      mpd_port = "6669";


      song_list_format = "{%t - }{%a}|{$5%f$9}$R{$5%l$9}";
      song_status_format = "{%t - }{%a}|{%f}";
      song_library_format = "{%n - }{%t}|{%f} ";
      alternative_header_first_line_format = "$b$1$aqqu$/a$9 {%t}|{%f} $1$atqq$/a$9$/b";
      alternative_header_second_line_format = "{{$4$b%a$/b$9}{ - $7%b$9}{ ($4%y$9)}}|{%D}";
      current_item_prefix = "$(blue)$r";
      current_item_suffix = "$/r$(end)";
      current_item_inactive_column_prefix = "$(blue)$r";
      current_item_inactive_column_suffix = "$/r$(end)";
      now_playing_prefix = "";
      now_playing_suffix = "";
      browser_playlist_prefix = "'$2playlist$9 '";
      selected_item_prefix = "$6";
      selected_item_suffix = "$9";
      modified_item_prefix = "$3> $9";

      # NOTE special non-space empty char
      # progressbar_look = if rounding then "⠀" else "⠀";
      progressbar_look = "━━━";


      ## Available values: classic, alternative.
      user_interface = "classic";
      data_fetching_delay = true;
      ## Available values: artist, album_artist, date, genre, composer, performer.
      media_library_primary_tag = "artist";
      media_library_albums_split_by_date = true;
      media_library_hide_album_dates = false;
      ## Available values: wrapped, normal.
      default_find_mode = "wrapped";
      default_tag_editor_pattern = "%n - %t";
      header_visibility = false;
      statusbar_visibility = true;

      # Show the "Connected to ..." message on startup
      connected_message_on_startup = false;
      titles_visibility = false;
      header_text_scrolling = true;
      cyclic_scrolling = true;
      # lyrics_fetchers = "tags";
      follow_now_playing_lyrics = false;
      fetch_lyrics_for_current_song_in_background = false;
      store_lyrics_in_song_dir = false;
      generate_win32_compatible_filenames = false;
      allow_for_physical_item_deletion = false;

      screen_switcher_mode = "playlist, browser";
      startup_screen = "browser";
      startup_slave_screen = "";

      startup_slave_screen_focus = false;
      locked_screen_width_part = "50";

      ask_for_locked_screen_width_part = true;
      media_library_column_width_ratio_two = "1:1";
      media_library_column_width_ratio_three = "1:1:1";
      playlist_editor_column_width_ratio = "1:2";
      jump_to_now_playing_song_at_start = true;
      ask_before_clearing_playlists = true;
      clock_display_seconds = false;
      display_volume_level = false;
      display_bitrate = false;
      display_remaining_time = false;
      regular_expressions = "perl";
      ignore_leading_the = false;

      external_editor = "nvim";
      use_console_editor = true;
    };
  };
}
