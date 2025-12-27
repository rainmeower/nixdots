# TODO better way to format this stuff

# TODO .xpi .sc
{
  p,
  ...
}:{
  programs.yazi.theme.icon = {
    dirs = /* lib.mkDefault */ [
      { name = "*"; text = ""; }
    ];

    files = [ # {{{
    { name = ".bash_profile"; text = ""; }
    { name = ".bashrc"; text = ""; }
    { name = ".gtkrc-2.0"; text = ""; }
    { name = ".Xresources"; text = ""; }

    { name = "license";     text = ""; fg = p.yellow; }
    { name = "license.md";  text = ""; fg = p.yellow; }
    { name = "license.txt"; text = ""; fg = p.yellow; }
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
    { name = "docker-compose.yaml"; text = "󰡨"; fg = p.blue; }
    { name = "docker-compose.yml"; text = "󰡨"; fg = p.blue; }
    { name = "dockerfile"; text = "󰡨"; fg = p.blue; }
    { name = "compose.yaml"; text = "󰡨"; fg = p.blue; }
    { name = "compose.yml"; text = "󰡨"; fg = p.blue; }
    { name = "containerfile"; text = "󰡨"; fg = p.blue; }
    # }}}

    # go {{{
    { name = "go.mod"; text = ""; fg = p.blue; }
    { name = "go.sum"; text = ""; fg = p.blue; }
    { name = "go.work"; text = ""; fg = p.blue; }
    # }}}


    { name = "Cargo.toml"; text = ""; fg = p.red; }

    { name = "build.zig.zon"; text = ""; fg = p.yellow; }



    # git {{{
    { name = ".git-blame-ignore-revs"; text = ""; fg = p.orange; }
    { name = ".gitattributes"; text = ""; fg = p.orange; }
    { name = ".gitignore"; text = ""; fg = p.orange; }
    { name = ".gitmodules"; text = ""; fg = p.orange; }
    { name = "COMMIT_EDITMSG"; text = ""; fg = p.orange; }
    { name = "HEAD"; text = ""; fg = p.orange; }
    { name = "description"; text = ""; fg = p.orange; }
    { name = "index"; text = ""; fg = p.orange; }
    { name = "packed-refs"; text = ""; fg = p.orange; }
    # }}}
    ]; # }}}

    exts = /* lib.mkDefault */ [ # {{{


    # 3d {{{
	  { name = "blend"; text = ""; fg = p.orange; }
	  { name = "obj"; text = "󰆧"; }
	  { name = "mtl"; text = "󰆧"; }
	  { name = "stl"; text = "󰆧"; }
	  { name = "wrz"; text = "󰆧"; }
	  { name = "wrl"; text = "󰆧"; }
	  { name = "3mf"; text = "󰆧"; }
	  { name = "fbx"; text = "󰆧"; }
	  { name = "ply"; text = "󰆧"; }
    # }}}



    { name = "xul"; text = "󰈹"; fg = p.orange; }

    # checksums {{{
    { name = "md5";    text = "󰕥"; fg = p.green; }
    { name = "sha1";   text = "󰕥"; fg = p.green; }
    { name = "sha224"; text = "󰕥"; fg = p.green; }
    { name = "sha256"; text = "󰕥"; fg = p.green; }
    { name = "sha384"; text = "󰕥"; fg = p.green; }
    { name = "sha512"; text = "󰕥"; fg = p.green; }
    # }}}

    { name = "log"; text = "󰌱"; }

    { name = "license"; text = ""; fg = p.yellow; }

    { name = "kdenlive"; text = ""; fg = p.blue; }


    # godot {{{
    { name = "gd";    text = ""; fg = p.blue; }
    { name = "godot"; text = ""; fg = p.blue; }
    { name = "tscn";  text = ""; fg = p.blue; }
    { name = "tres";  text = ""; fg = p.blue; }
    # }}}

    { name = "dockerfile";   text = "󰡨"; fg = p.blue; }
    { name = "dockerignore"; text = "󰡨"; fg = p.blue; }

    { name = "ebook"; text = ""; }
    { name = "epub";  text = ""; }

    { name = "ebuild"; text = ""; fg = p.purple; }

    { name = "diff";  text = ""; }
    { name = "patch"; text = ""; }

    # shell {{{
    { name = "nu";   text = ""; fg = p.green; }
    { name = "sh";   text = ""; fg = p.green; }
    { name = "bash"; text = ""; fg = p.green; }
    { name = "zsh";  text = ""; fg = p.green; }
    { name = "fish"; text = ""; fg = p.green; }
    # }}}

    # gross v2 {{{
    { name = "bat"; text = ""; fg = p.red; }
    { name = "exe"; text = ""; fg = p.red; }
    { name = "dll"; text = "󱉟"; fg = p.red; }
    # }}}


    { name = "gpg"; text = "󱕴"; fg = p.yellow; }
    { name = "desktop"; text = ""; }

    { name = "celeste"; text = ""; fg = p.purple; } # :3


    { name = "download"; text = ""; fg = p.green; }
    { name = "torrent"; text = ""; fg = p.green; }
    { name = "part"; text = ""; fg = p.green; }


    { name = "import"; text = ""; }

    # lang {{{
    # c.* {{{
    { name = "c"; text = ""; fg = p.blue; }
    { name = "c++"; text = ""; fg = p.purple; }
    { name = "cxx"; text = ""; fg = p.purple; }
    { name = "cxxm"; text = ""; fg = p.purple; }
    { name = "cpp"; text = ""; fg = p.purple; }
    { name = "cppm"; text = ""; fg = p.purple; }
    { name = "cp"; text = ""; fg = p.purple; }
    { name = "h"; text = ""; fg = p.blue; }
    { name = "hpp"; text = ""; fg = p.purple; }
    { name = "hxx"; text = ""; fg = p.purple; }
    # }}}

    # opengl {{{
    { name = "glsl"; text = "󰓠"; fg = p.blue; } # sunglasses because they shade ur eyes like shaders lmao
    { name = "frag"; text = "󰓠"; fg = p.blue; }
    { name = "vert"; text = "󰓠"; fg = p.blue; }
    { name = "geom"; text = "󰓠"; fg = p.blue; }
    # }}}


    # qt {{{
    { name = "qml"; text = ""; fg = p.green; }
    { name = "qrc"; text = ""; fg = p.green; }
    { name = "qss"; text = ""; fg = p.green; }
    # }}}

    { name = "nix"; text = "󱄅"; fg = p.blue; } # this file !!!

    { name = "css"; text = ""; fg = p.blue; }
    { name = "sass"; text = ""; fg = p.pink; }
    { name = "scss"; text = ""; fg = p.pink; }


    { name = "html"; text = ""; fg = p.orange; }
    { name = "jar"; text = ""; fg = p.orange; }
    { name = "java"; text = ""; fg = p.orange; }
    { name = "ml";  text = ""; fg = p.orange; }
    { name = "mli"; text = ""; fg = p.orange; }
    { name = "swift"; text = ""; fg = p.red; }
    { name = "kt"; text = "󱈙"; fg = p.purple; }
    { name = "svelte"; text = ""; fg = p.red; }
    { name = "ino"; text = ""; fg = p.blue; }
    { name = "go"; text = ""; fg = p.blue; }

    # shit {{{
    { name = "js";  text = ""; fg = p.yellow; }
    { name = "cjs"; text = ""; fg = p.yellow; }
    { name = "ts";  text = ""; fg = p.blue; }
    { name = "cts"; text = ""; fg = p.blue; }
    # }}}

    { name = "rs"; text = ""; fg = p.red; } # meoaw :3
    { name = "rlib"; text = ""; fg = p.red; } # meoaw :3

    # python {{{
    { name = "py";  text = ""; fg = p.yellow; }
    { name = "pyc"; text = ""; fg = p.yellow; }
    { name = "pyd"; text = ""; fg = p.yellow; }
    { name = "pyi"; text = ""; fg = p.yellow; }
    { name = "pyo"; text = ""; fg = p.yellow; }
    { name = "pyw"; text = ""; fg = p.yellow; }
    { name = "pyx"; text = ""; fg = p.yellow; }
    # }}}

    { name = "hs"; text = ""; fg = p.purple; }
    { name = "lhs"; text = ""; fg = p.purple; }
    { name = "git"; text = ""; fg = p.orange; }

    # lua {{{
    { name = "lua"; text = "󰢱"; fg = p.blue; }
    { name = "luac"; text = "󰢱"; fg = p.blue; }
    { name = "luau"; text = "󰢱"; fg = p.blue; }
    # }}}

    { name = "zig"; text = ""; fg = p.yellow; }

    # emacs {{{
    { name = "el";  text = ""; fg = p.purple; }
    { name = "elc"; text = ""; fg = p.purple; }
    { name = "eln"; text = ""; fg = p.purple; }
    # }}}

      # }}}

    # image {{{
    { name = "gif"; text = ""; fg = p.yellow; }
    { name = "svg"; text = "󰜡"; fg = p.yellow; } # 󰕙
    { name = "svgz"; text = "󰜡"; fg = p.yellow; }

    { name = "webp"; text = ""; fg = p.yellow; }
    { name = "jpeg"; text = ""; fg = p.yellow; }
    { name = "jpg"; text = ""; fg = p.yellow; }
    { name = "jxl"; text = ""; fg = p.yellow; }
    { name = "png"; text = ""; fg = p.yellow; }
    { name = "tiff"; text = ""; fg = p.yellow; }
    { name = "ico"; text = ""; fg = p.yellow; }
    { name = "bmp"; text = ""; fg = p.yellow; }
    { name = "tga"; text = ""; fg = p.yellow; }
    { name = "dds"; text = ""; fg = p.yellow; }
    { name = "pbm"; text = ""; fg = p.yellow; }
    { name = "pgm"; text = ""; fg = p.yellow; }
    { name = "ppm"; text = ""; fg = p.yellow; }
    { name = "ras"; text = ""; fg = p.yellow; }
    { name = "sgi"; text = ""; fg = p.yellow; }
    { name = "xbm"; text = ""; fg = p.yellow; }

    { name = "vtf"; text = ""; fg = p.yellow; } # valve texture
    { name = "vmt"; text = ""; } # valve texture properties
    # }}}

    # video/audio {{{
    { name = "mp4";  text = ""; fg = p.purple; }
    { name = "webm"; text = ""; fg = p.purple; }
    { name = "mkv";  text = ""; fg = p.purple; }
    { name = "mov";  text = ""; fg = p.purple; }
    { name = "ogv";  text = ""; fg = p.purple; }
    { name = "ogx";  text = ""; fg = p.purple; }
    { name = "wmv";  text = ""; fg = p.purple; }

    { name = "mp3";  text = ""; fg = p.purple; }
    { name = "aac";  text = ""; fg = p.purple; }
    { name = "aif";  text = ""; fg = p.purple; }
    { name = "aiff"; text = ""; fg = p.purple; }
    { name = "ogg";  text = ""; fg = p.purple; }
    { name = "oga";  text = ""; fg = p.purple; }
    { name = "spx";  text = ""; fg = p.purple; }
    { name = "ape";  text = ""; fg = p.purple; }
    { name = "wma";  text = ""; fg = p.purple; }
    { name = "wv";   text = ""; fg = p.purple; }
    { name = "wvc";  text = ""; fg = p.purple; }
    { name = "pcm";  text = ""; fg = p.purple; }
    { name = "opus"; text = ""; fg = p.purple; }
    { name = "flac"; text = ""; fg = p.purple; }
    { name = "wav";  text = "󱑽"; fg = p.purple; }
    # }}}

    # font {{{
    { name = "ttf"; text = ""; }
    { name = "otf"; text = ""; }
    { name = "woff"; text = ""; }
    { name = "woff2"; text = ""; }
    # }}}

    # subtitles {{{
    { name = "ass"; text = "󰨖"; } # butt haha
    { name = "ssa"; text = "󰨖"; }
    { name = "srt"; text = "󰨖"; }
    { name = "sub"; text = "󰨖"; }
    # }}}

    # config {{{
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
    # }}}

    # db {{{
    { name = "cache"; text = ""; }
    { name = "dump"; text = ""; }
    { name = "db";  text = ""; }
    { name = "sql"; text = ""; }
    { name = "sqlite";  text = ""; }
    { name = "sqlite3"; text = ""; }
    # }}}

    # valve {{{
    { name = "bsp"; text = ""; }
    { name = "vmf"; text = ""; }
    { name = "vmx"; text = ""; }
    # }}}


    # binary {{{
    { name = "dat";  text = ""; }
    { name = "bin";  text = ""; }
    { name = "o";    text = ""; }
    { name = "out";  text = ""; }
    # }}}

    { name = "lock"; text = ""; }

    { name = "txt";  text = ""; } # override default



    { name = "pub"; text = "󰌆"; fg = p.yellow; }

    # markup
    { name = "md";   text = ""; }
    { name = "mdx";  text = ""; }
    { name = "org";  text = ""; fg = p.green; }
    { name = "norg"; text = ""; fg = p.blue; }
    # }}}

    { name = "iso";  text = ""; }
    { name = "qcow2"; text = ""; }


    { name = "psd"; text = ""; fg = p.blue; }
    { name = "kra"; text = ""; fg = p.pink; }
    { name = "kra~"; text = ""; } # krita autosave
    { name = "xcf"; text = ""; fg = p.grey; }

    { name = "theme"; text = "󰏘"; fg = p.accent; }

    # archive {{{
    { name = "7z";  text = ""; fg = p.red; }
    { name = "gz";  text = ""; fg = p.red; }
    { name = "tgz"; text = ""; fg = p.red; }
    { name = "xz";  text = ""; fg = p.red; }
    { name = "bz";  text = ""; fg = p.red; }
    { name = "bz2"; text = ""; fg = p.red; }
    { name = "bz3"; text = ""; fg = p.red; }
    { name = "bzl"; text = ""; fg = p.red; }
    { name = "zst"; text = ""; fg = p.red; }
    { name = "lz4"; text = ""; fg = p.red; }
    { name = "lha"; text = ""; fg = p.red; }
    { name = "zip"; text = ""; fg = p.red; }
    { name = "rar"; text = ""; fg = p.red; }
    # }}}
    ]; # }}}
  };
}
