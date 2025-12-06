{
  pkgs,
  username,
  config,
  ...
}:{
  imports = [
    ./icons.nix
    ./input.nix
    ./keymap.nix
    ./open.nix
    ./opener.nix
    ./plugin.nix
    ./settings.nix
    ./theme.nix
  ];
  home.packages = with pkgs; [
    exiftool
  ];

  programs.yazi = {
    enable = true;
    enableNushellIntegration = true;

    plugins = {
      inherit (pkgs.yaziPlugins)
        chmod 
        compress
        dupes 
        git
        jump-to-char
        mount 
        no-status 
        piper 
        restore 
        starship 
        sudo 
      ;

      # TODO check nixpkgs for these later
      krita-preview = ./plugins/krita-preview.yazi;
      gvfs = ./plugins/gvfs.yazi;
      file-actions = ./plugins/gvfs.yazi;
      pref-by-location = ./plugins/pref-by-location.yazi;
      open-with-cmd = ./plugins/open-with-cmd.yazi;
      simple-tag = ./plugins/simple-tag.yazi;
    };

    initLua = /* lua */ ''
require("no-status"):setup()
require("simple-tag"):setup({
  ui_mode = "icon", -- icon, text, hidden
  hints_disabled = false, -- key hint popup in bottom right

  -- https://github.com/sxyazi/yazi/blob/077faacc9a84bb5a06c5a8185a71405b0cb3dc8a/yazi-plugin/preset/components/linemode.lua#L4-L5
  linemode_order = 500,
  -- save_path = "/home/${username}/.config/yazi/tags",
  colors = { -- (Optional)
	  reversed = ${if config.programs.yazi.theme.mgr.hovered.reversed then "true" else "false"}, -- TODO find a better way to do this

	  ["*"] = "magenta", -- xdg user dirs
	  ["$"] = "green",
	  ["!"] = "yellow",
	  ["1"] = "cyan",
	  ["p"] = "red",
	  ["o"] = "blue",
	  ["g"] = "cyan", -- git repos
  },

  -- https://www.nerdfonts.com/cheat-sheet
  icons = {
		default = "",
		["*"] = "*", -- xdg user dirs
		["$"] = "",
		["o"] = "",
		["!"] = "",
		["p"] = "",
		["g"] = "", -- git repos
  },
})

require("git"):setup()
require("starship"):setup()
require("gvfs"):setup()
require("dupes"):setup {
	save_op = false, -- dont save results to file
	profiles = {
		interactive = {
			args = { "-r" },
		},
		apply = {
			args = { "-r", "-N", "-d" },
			save_op = false,  -- dont save results before deletion
		},
	},
}

local pref_by_location = require("pref-by-location")
pref_by_location:setup({
  prefs = {
    {
      location = ".*/dl",
      sort = {
        "btime",
        reverse = true,
        dir_first = true
      }
    },
    {
      location = ".*/Trash/files",
      sort = {
        "mtime",
        reverse = true,
        dir_first = false
      }
    },
    {
      location = ".*/Trash/info",
      sort = {
        "mtime",
        reverse = true,
        mir_first = false
      }
    },
  },
})
    '';
  };
}
