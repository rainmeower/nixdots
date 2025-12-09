{
  pkgs,
    ...
}:{
  home.packages = with pkgs; [
    discordo
  ];

  xdg.configFile."discordo/config.toml".source = (pkgs.formats.toml {}).generate "config.toml" {
    mouse = false;
    editor = "default";
    status = "invisible";
    markdown = true; # render markdown
    hide_blocked_users = true;
    show_attachment_links = false;

# Use autocomplete_limit = 0 to disable autocompleting mentions
# NOTE: tab completion will still work, but it won't show any list.
    autocomplete_limit = 20;

# The number of messages to fetch when a text-based channel is selected from guilds tree. The minimum and maximum value is 0 and 100, respectively.
    messages_limit = 50;

    timestamps = {
      enabled = true;
# https://pkg.go.dev/time#Layout
      format = "15:04:05";
    };

    notifications = {
      enabled = true;
# The duration of the sound. Set the value to `0` to use default duration. This is only supported on Unix and Windows.
      duration = 0;
      sound = {
        enabled = true;
        only_on_ping = true;
      };
    };

    keys = {
      focus_guilds_tree = "Ctrl+G";
      focus_messages_list = "Ctrl+T";
      focus_message_input = "Ctrl+N";
# Cycle focus between the widgets.
      focus_previous = "Ctrl+H";
      focus_next = "Ctrl+L";
# Hide/show the guilds tree.
      toggle_guilds_tree = "Ctrl+B";
      quit = "Ctrl+Q";
# Log out and remove the authentication token from keyring.
# Requires re-login upon restart.
      logout = "";

# Only while focusing on the guilds tree
      guilds_tree = {
        select_previous = "Rune[e]";
        select_next = "Rune[a]";
        select_first = "Rune[g]";
        select_last = "Rune[G]";
# Select the currently highlighted text-based channel or expand a guild or channel.
        select_current = "Enter";
        yank_id = "Rune[i]";
        collapse_parent_node = "Rune[-]";
        move_to_parent_node = "Rune[p]";
      };

# Only while focusing on sent messages
      messages_list = {
        select_previous = "Rune[e]";
        select_next = "Rune[a]";
        select_first = "Rune[g]";
        select_last = "Rune[G]";
# Select the message reference (reply) of the selected channel.
        select_reply = "Rune[f]"; # f for follow
# Reply to the selected message.
          reply = "Rune[R]";
# Reply (with mention) to the selected message.
        reply_mention = "Rune[r]";
        cancel = "Esc";
        edit = "Rune[c]"; # c for change
          delete = "Rune[D]";
        delete_confirm = "Rune[d]";
# Open the selected message's attachments or hyperlinks in the message
# using the default browser application.
        open = "Enter";
# Yank (copy) the selected message's content/url/id.
        yank_content = "Rune[y]";
        yank_url = "Rune[u]";
        yank_id = "Rune[i]";
      };

# Only while typing a message
# Alt+Enter: Insert a new line to the current text.
      message_input = {
# paste from clipboard (supports both text and images)
        paste = "Ctrl+V";
        send = "Enter";
# Remove existing text or cancel reply.
        cancel = "Esc";
# Complete usernames when mentioning
        tab_complete = "Tab";

        open_editor = "Ctrl+E";
        open_file_picker = "Ctrl+Y";
      };

      mentions_list = {
        down = "Ctrl+A";
        up = "Ctrl+E";
      };
    };
    theme = {
# style = { foreground = "", background = "", attributes = "" or [""] }
      title = {
        alignment = "left"; # left center right

          normal_style.attributes = "dim";
        active_style = {
          foreground = "blue";
          attributes = "bold";
        };
      };

      border = {
        enabled = true;
        padding = [0 0 1 1]; # [top bottom left right]

          normal_style.attributes = "dim";
        active_style.foreground = "blue";

# hidden plain round thick double
        normal_set = "plain";
        active_set = "plain";

        guilds_tree = {
          auto_expand_folders = true;
# Give tree-like shape
          graphics = true;
          graphics_color = "default";
        };

        messages_list = {
          reply_indicator = ">";
          forwarded_indicator = "<";

          emoji_style.foreground = "magenta";
          url_style.foreground = "yellow";
          attachment_style.foreground = "yellow";

          message_style.foreground = "blue";
          mention_style = {
            foreground = "blue";
            attributes = "bold";
          };
          author_style = {
            foreground = "blue";
            attributes = "bold";
          };
        };

        mentions_list = {
# NOTE: width and height are capped to the avaliable space
# Minimum width
# 0 = make the list as wide as possible
          min_width = 20;
# Maximum height
# 0 = make the list as tall as needed
          max_height = 0;

        };
      };
    };
  };
}
