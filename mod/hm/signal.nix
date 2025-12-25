{
  pkgs,
  ...
}:{
  hm_alt.home.packages = with pkgs; [
    signal-cli
    gurk-rs
  ];

  # programs.gurk-rs = {
  #   enable = true;
  #   settings = {
  #     colored_messages = true;
  #     bell = true;
  #     notifications = false;
  #     first_name_only = true;
  #
  #     # user.name = "nyx";
  #     # user.phone_number = TODO secrets stuff
  #
  #     default_keybindings = false;
  #     keybindings = {
  #       anywhere = {
  #         backspace = "delete_character previous";
  #         delete = "delete_character next";
  #         ctrl-q = "quit";
  #       };
  #
  #
  #       normal = {
  #         F2 = "toggle_channel_modal";
  #         ctrl-t = "select_message previous entry";
  #         ctrl-c = "select_message next entry";
  #         ctrl-shift-t = "select_channel previous";
  #         ctrl-shift-c = "select_channel next";
  #         ctrl-m = "toggle_multiline";
  #         # ctrl-f = "move_text next word";
  #         # alt-f = "move_text next character";
  #         # ctrl-b = "move_text previous word";
  #         # alt-b = "move_text previous character";
  #         ctrl-u = "kill_backward_line";
  #         ctrl-w = "kill_word";
  #         ctrl-a = "beginning_of_line";
  #         ctrl-e = "end_of_line";
  #         # tab = "react";
  #         left = "move_text previous character";
  #         right = "move_text next character";
  #       };
  #
  #       message_selected = {
  #         y = "copy_message selected";
  #         e = "edit_message";
  #         r = "react";
  #       };
  #
  #       multiline = {
  #         ctrl-t = "move_text previous line";
  #         ctrl-c = "move_text next line";
  #         # # defaults;
  #         # up = "move_text previous line";
  #         # down = "move_text next line";
  #       };
  #
  #       help = {
  #         # esc = "help";
  #         # ctrl-n = "scroll help down entry";
  #         # ctrl-p = "scroll help up entry";
  #         # # defaults;
  #         # down = "scroll help down entry";
  #         # up = "scroll help up entry";
  #         # pagedown = "scroll help down entry";
  #         # pageup = "scroll help up entry";
  #       };
  #
  #       channel_modal = {
  #         # F2 = "toggle_channel_modal";
  #         # ctrl-n = "select_channel_modal next";
  #         # ctrl-p = "select_channel_modal previous";
  #         # ctrl-f = "move_text next word";
  #         # ctrl-b = "move_text previous word";
  #         # alt-f = "move_text next character";
  #         # alt-b = "move_text previous character";
  #         # ctrl-u = "kill_backward_line";
  #         # ctrl-w = "kill_word";
  #         # ctrl-a = "beginning_of_line";
  #         # ctrl-e = "end_of_line";
  #         # alt-backspace = "kill_word";
  #         # # defaults
  #         # ctrl-left = "move_text previous character";
  #         # ctrl-right = "move_text next character";
  #         # down = "select_channel_modal next";
  #         # up = "select_channel_modal previous";
  #         # left = "move_text previous character";
  #         # right = "move_text next character";
  #         # alt-left = "move_text previous word";
  #         # alt-right = "move_text next word";
  #         # home = "beginning_of_line";
  #         # end = "end_of_line";
  #       };
  #
  #
  #     };
  #   };
  # };
}
