# TODO better way to format this stuff
{
  self,
  theme,
  lib,
  ...
}: let
  col = import (self + /theme/${builtins.elemAt (builtins.split "_" theme) 0}/colors.nix);
in {
  programs.yazi.theme.icon = {
    dirs = /* lib.mkDefault */ [
      { name = "*"; text = ""; }
    ];

    files = [
      { name = ".bash_profile"; text = ""; }
      { name = ".bashrc"; text = ""; }
      { name = ".gtkrc-2.0"; text = ""; }
      { name = ".Xresources"; text = ""; }

      { name = "license";     text = ""; fg = col.yellow; }
      { name = "license.md";  text = ""; fg = col.yellow; }
      { name = "license.txt"; text = ""; fg = col.yellow; }
      { name = "readme";      text = "󰂺"; }
      { name = "readme.md";   text = "󰂺"; }
      { name = "readme.txt";  text = "󰂺"; }
      { name = "authors";     text = ""; }
      { name = "authors.md";  text = ""; }
      { name = "authors.txt"; text = ""; }
      { name = "security";    text = "󰒃"; }
      { name = "security.md"; text = "󰒃"; }

      { name = "makefile"; text = "󱌣"; }
      { name = "gnumakefile"; text = "󱌣"; }
      { name = "cmake"; text = ""; }

      { name = "config";   text = ""; }
      { name = "settings"; text = ""; }




      # docker {{{
	    { name = "docker-compose.yaml"; text = "󰡨"; fg = col.blue; }
	    { name = "docker-compose.yml"; text = "󰡨"; fg = col.blue; }
	    { name = "dockerfile"; text = "󰡨"; fg = col.blue; }
	    { name = "compose.yaml"; text = "󰡨"; fg = col.blue; }
	    { name = "compose.yml"; text = "󰡨"; fg = col.blue; }
	    { name = "containerfile"; text = "󰡨"; fg = col.blue; }
      # }}}

      # go {{{
      { name = "go.mod"; text = ""; fg = col.blue; }
      { name = "go.sum"; text = ""; fg = col.blue; }
      { name = "go.work"; text = ""; fg = col.blue; }
      # }}}


      { name = "Cargo.toml"; text = ""; fg = col.red; }

      { name = "build.zig.zon"; text = ""; fg = col.yellow; }



      # git {{{
      { name = ".git-blame-ignore-revs"; text = ""; fg = col.orange; }
      { name = ".gitattributes"; text = ""; fg = col.orange; }
      { name = ".gitignore"; text = ""; fg = col.orange; }
      { name = ".gitmodules"; text = ""; fg = col.orange; }
      { name = "COMMIT_EDITMSG"; text = ""; fg = col.orange; }
      { name = "HEAD"; text = ""; fg = col.orange; }
      { name = "description"; text = ""; fg = col.orange; }
      { name = "index"; text = ""; fg = col.orange; }
      { name = "packed-refs"; text = ""; fg = col.orange; }
      # }}}
    ];


    exts = /* lib.mkDefault */ [

    { name = "xul"; text = ""; fg = col.orange; }

# checksums {{{
    { name = "md5"; text = "󰕥"; fg = col.green; }
    { name = "sha1"; text = "󰕥"; fg = col.green; }
    { name = "sha224"; text = "󰕥"; fg = col.green; }
    { name = "sha256"; text = "󰕥"; fg = col.green; }
    { name = "sha384"; text = "󰕥"; fg = col.green; }
    { name = "sha512"; text = "󰕥"; fg = col.green; }
# }}}

    { name = "log"; text = "󰌱"; }

    { name = "license";     text = ""; fg = col.yellow; }

    { name = "kdenlive"; text = ""; fg = col.blue; }


    { name = "gd"; text = ""; fg = col.blue; }
    { name = "godot"; text = ""; fg = col.blue; }
    { name = "tscn"; text = ""; fg = col.blue; }
    { name = "tres"; text = ""; fg = col.blue; }

    { name = "Dockerfile"; text = "󰡨"; fg = col.blue; }
    { name = "dockerignore"; text = "󰡨"; fg = col.blue; }

    { name = "ebook"; text = ""; }
    { name = "epub";  text = ""; }

    { name = "ebuild"; text = ""; fg = col.purple; }

    { name = "diff"; text = ""; }
    { name = "patch"; text = ""; }

    { name = "nu";   text = ""; fg = col.green; }
    { name = "sh";   text = ""; fg = col.green; }
    { name = "bash"; text = ""; fg = col.green; }
    { name = "zsh";  text = ""; fg = col.green; }
    { name = "fish"; text = ""; fg = col.green; }

    { name = "bat"; text = ""; fg = col.red; }
    { name = "exe"; text = ""; fg = col.red; }
    { name = "dll"; text = "󱉟"; fg = col.red; }


    { name = "gpg"; text = "󱕴"; fg = col.yellow; }
    { name = "desktop"; text = ""; }

    { name = "celeste"; text = ""; fg = col.purple; }


    { name = "download"; text = ""; fg = col.green; }
    { name = "torrent"; text = ""; fg = col.green; }
    { name = "part"; text = ""; fg = col.green; }


    { name = "import"; text = ""; }

# lang {{{
  { name = "c"; text = ""; fg = col.blue; }
  { name = "c++"; text = ""; fg = col.purple; }
  { name = "cxx"; text = ""; fg = col.purple; }
  { name = "cxxm"; text = ""; fg = col.purple; }
  { name = "cpp"; text = ""; fg = col.purple; }
  { name = "cppm"; text = ""; fg = col.purple; }
  { name = "cp"; text = ""; fg = col.purple; }
  { name = "h"; text = ""; fg = col.blue; }
  { name = "hpp"; text = ""; fg = col.purple; }
  { name = "hxx"; text = ""; fg = col.purple; }

  { name = "glsl"; text = "󰓠"; fg = col.blue; } # sunglasses because they shade ur eyes like shaders lmao
  { name = "frag"; text = "󰓠"; fg = col.blue; }
  { name = "vert"; text = "󰓠"; fg = col.blue; }
  { name = "geom"; text = "󰓠"; fg = col.blue; }


	{ name = "qml"; text = ""; fg = col.green; }
	{ name = "qrc"; text = ""; fg = col.green; }
	{ name = "qss"; text = ""; fg = col.green; }

  { name = "nix"; text = "󱄅"; fg = col.blue; } # this file !!!

  { name = "css"; text = ""; fg = col.blue; }
	{ name = "sass"; text = ""; fg = col.pink; }
	{ name = "scss"; text = ""; fg = col.pink; }


  { name = "html"; text = ""; fg = col.orange; }
  { name = "jar"; text = ""; fg = col.orange; }
  { name = "java"; text = ""; fg = col.orange; }
  { name = "ml";  text = ""; fg = col.orange; }
  { name = "mli"; text = ""; fg = col.orange; }
  { name = "swift"; text = ""; fg = col.red; }
  { name = "kt"; text = "󱈙"; fg = col.purple; }
  { name = "svelte"; text = ""; fg = col.red; }
  { name = "ino"; text = ""; fg = col.blue; }
  { name = "go"; text = ""; fg = col.blue; }

  { name = "js";  text = ""; fg = col.yellow; } # gross
  { name = "cjs"; text = ""; fg = col.yellow; } # gross
  { name = "ts";  text = ""; fg = col.blue; }
  { name = "cts"; text = ""; fg = col.blue; }

  { name = "rs"; text = ""; fg = col.red; } # meoaw :3
  { name = "rlib"; text = ""; fg = col.red; } # meoaw :3

  { name = "py";  text = ""; fg = col.yellow; }
  { name = "pyc"; text = ""; fg = col.yellow; }
  { name = "pyd"; text = ""; fg = col.yellow; }
  { name = "pyi"; text = ""; fg = col.yellow; }
  { name = "pyo"; text = ""; fg = col.yellow; }
  { name = "pyw"; text = ""; fg = col.yellow; }
  { name = "pyx"; text = ""; fg = col.yellow; }

  { name = "hs"; text = ""; fg = col.purple; }
  { name = "lhs"; text = ""; fg = col.purple; }
  { name = "git"; text = ""; fg = col.orange; }
  { name = "lua"; text = "󰢱"; fg = col.blue; }
  { name = "luac"; text = "󰢱"; fg = col.blue; }
  { name = "luau"; text = "󰢱"; fg = col.blue; }
  { name = "zig"; text = ""; fg = col.yellow; }

  { name = "el";  text = ""; fg = col.purple; }
  { name = "elc"; text = ""; fg = col.purple; }
  { name = "eln"; text = ""; fg = col.purple; }

# }}}



# video {{{
  { name = "webp"; text = ""; fg = col.yellow; }
  { name = "jpeg"; text = ""; fg = col.yellow; }
  { name = "jpg"; text = ""; fg = col.yellow; }
  { name = "jxl"; text = ""; fg = col.yellow; }
  { name = "png"; text = ""; fg = col.yellow; }
  { name = "gif"; text = ""; fg = col.yellow; }
  { name = "svg"; text = "󰜡"; fg = col.yellow; }
  { name = "svgz"; text = "󰜡"; fg = col.yellow; }

  { name = "vtf"; text = ""; fg = col.yellow; } # valve texture
  { name = "vmt"; text = ""; } # valve texture properties

  { name = "tiff"; text = ""; fg = col.yellow; }
  { name = "ico"; text = ""; fg = col.yellow; }
  { name = "bmp"; text = ""; fg = col.yellow; }
  { name = "tga"; text = ""; fg = col.yellow; }
  { name = "dds"; text = ""; fg = col.yellow; }
  { name = "pbm"; text = ""; fg = col.yellow; }
  { name = "pgm"; text = ""; fg = col.yellow; }
  { name = "ppm"; text = ""; fg = col.yellow; }
  { name = "ras"; text = ""; fg = col.yellow; }
  { name = "sgi"; text = ""; fg = col.yellow; }
  { name = "xbm"; text = ""; fg = col.yellow; }
# }}}

# video/audio {{{
  { name = "mp4";  text = ""; fg = col.purple; }
  { name = "webm"; text = ""; fg = col.purple; }
  { name = "mkv";  text = ""; fg = col.purple; }
  { name = "mov";  text = ""; fg = col.purple; }
  { name = "ogv";  text = ""; fg = col.purple; }
  { name = "ogx";  text = ""; fg = col.purple; }
  { name = "wmv";  text = ""; fg = col.purple; }

  { name = "mp3";  text = ""; fg = col.purple; }
  { name = "aac";  text = ""; fg = col.purple; }
  { name = "aif";  text = ""; fg = col.purple; }
  { name = "aiff"; text = ""; fg = col.purple; }
  { name = "ogg";  text = ""; fg = col.purple; }
  { name = "oga";  text = ""; fg = col.purple; }
  { name = "spx";  text = ""; fg = col.purple; }
  { name = "ape";  text = ""; fg = col.purple; }
  { name = "wma";  text = ""; fg = col.purple; }
  { name = "wv";   text = ""; fg = col.purple; }
  { name = "wvc";  text = ""; fg = col.purple; }
  { name = "pcm";  text = ""; fg = col.purple; }
  { name = "opus"; text = ""; fg = col.purple; }
  { name = "flac"; text = ""; fg = col.purple; }
  { name = "wav";  text = "󱑽"; fg = col.purple; }
# }}}



  { name = "ttf"; text = ""; }
  { name = "otf"; text = ""; }
  { name = "woff"; text = ""; }
  { name = "woff2"; text = ""; }


  { name = "ass"; text = "󰨖"; } # butt haha
  { name = "ssa"; text = "󰨖"; }
  { name = "srt"; text = "󰨖"; }
  { name = "sub"; text = "󰨖"; }

  { name = "ini";    text = ""; }
  { name = "cfg";    text = ""; }
  { name = "conf";   text = ""; }
  { name = "config"; text = ""; }
  { name = "dconf";  text = ""; }

  { name = "csv";  text = ""; }
  { name = "yaml"; text = ""; }
  { name = "yml";  text = ""; }
  { name = "json"; text = ""; }
  { name = "json5"; text = ""; }
  { name = "jsonc"; text = ""; }
  { name = "toml"; text = ""; }
  { name = "xml";  text = "󰗀"; }

  { name = "cache"; text = ""; }
  { name = "dump"; text = ""; }
  { name = "db";  text = ""; }
  { name = "sql"; text = ""; }
  { name = "sqlite";  text = ""; }
  { name = "sqlite3"; text = ""; }

# valve {{{
  { name = "bsp"; text = ""; }
  { name = "vmf"; text = ""; }
  { name = "vmx"; text = ""; }
# }}}

  { name = "lock"; text = ""; }

  { name = "dat";  text = ""; }
  { name = "bin";  text = ""; }
  { name = "o";    text = ""; }
  { name = "out";  text = ""; }

  { name = "txt";  text = ""; } # override default



	{ name = "pub"; text = "󰌆"; fg = col.yellow; }
  
  { name = "md";   text = ""; }
  { name = "mdx";  text = ""; }
  { name = "org";  text = ""; fg = col.green; }
  { name = "norg"; text = ""; fg = col.blue; }

  { name = "iso";  text = ""; }
  { name = "qcow2"; text = ""; }


  { name = "psd"; text = ""; fg = col.blue; }
  { name = "kra"; text = ""; fg = col.pink; }
  { name = "kra~"; text = ""; } # krita autosave
	{ name = "xcf"; text = ""; fg = col.grey; }

  { name = "theme"; text = "󰏘"; fg = col.accent; }

# archive {{{

  { name = "7z";  text = ""; fg = col.red; }
  { name = "gz";  text = ""; fg = col.red; }
  { name = "tgz"; text = ""; fg = col.red; }
  { name = "xz";  text = ""; fg = col.red; }
  { name = "bz";  text = ""; fg = col.red; }
  { name = "bz2"; text = ""; fg = col.red; }
  { name = "bz3"; text = ""; fg = col.red; }
  { name = "bzl"; text = ""; fg = col.red; }
  { name = "zst"; text = ""; fg = col.red; }
  { name = "lz4"; text = ""; fg = col.red; }
  { name = "lha"; text = ""; fg = col.red; }
  { name = "zip"; text = ""; fg = col.red; }
  { name = "rar"; text = ""; fg = col.red; }

# { name = "7z";  text = "󰗄"; fg = col.yellow; }
# { name = "gz";  text = "󰗄"; fg = col.yellow; }
# { name = "xz";  text = "󰗄"; fg = col.yellow; }
# { name = "bz";  text = "󰗄"; fg = col.yellow; }
# { name = "bz2"; text = "󰗄"; fg = col.yellow; }
# { name = "zst"; text = "󰗄"; fg = col.yellow; }
# { name = "lz4"; text = "󰗄"; fg = col.yellow; }
# { name = "lha"; text = "󰗄"; fg = col.yellow; }
# { name = "zip"; text = "󰗄"; fg = col.yellow; }
# { name = "rar"; text = "󰗄"; fg = col.yellow; }
# }}}
  ];
  };
}
