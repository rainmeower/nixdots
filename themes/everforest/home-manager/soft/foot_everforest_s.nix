{ lib, theme, ... }: {
  config = lib.mkIf (theme == "everforest_soft") {
  
  programs.foot = {
    enable = true;
    settings = {
      cursor.color = "333C43 9DA9A0";

      colors = {
        alpha = "1";

        background = "333C43";
        foreground = "9DA9A0";

        ## Normal/regular colors (color palette 0-7)
        regular0 = "293136";  # black
        regular1 = "E67E80";  # red
        regular2 = "A7C080";  # green
        regular3 = "DBBC7F";  # yellow
        regular4 = "7FBBB3";  # blue
        regular5 = "D699B6";  # magenta
        regular6 = "83C092";  # cyan
        regular7 = "d5e7ff";  # white

        ## Bright colors (color palette 8-15)
        bright0 = "616161";   # bright black
        bright1 = "ed8796";   # bright red
        bright2 = "a6da95";   # bright green
        bright3 = "eed49f";   # bright yellow
        bright4 = "b7bdf8";   # bright blue
        bright5 = "c6a0f6";   # bright magenta
        bright6 = "8bd5ca";   # bright cyan
        bright7 = "ffffff";   # bright white
      };
    };
  };


  home.file.".config/foot/float.ini".text = /* ini */ ''
    shell=nu
    app-id=footfloatme
    title=floatme
    font=Mononoki Nerd Font Mono:size=20
    dpi-aware=yes

    [cursor]
    style=beam
    blink=yes
    blink-rate=500
    unfocused-style=unchanged
    color=24273a cad3f5


    [colors]
    alpha=0
    background=24273a
    foreground=cad3f5
    flash=7f7f00
    flash-alpha=0.5

    ## Normal/regular colors (color palette 0-7)
    regular0=242424  # black
    regular1=ed8796  # red
    regular2=a6da95  # green
    regular3=eed49f  # yellow
    regular4=b7bdf8  # blue
    regular5=c6a0f6  # magenta
    regular6=8bd5ca  # cyan
    regular7=e6e6e6  # white

    ## Bright colors (color palette 8-15)
    bright0=616161   # bright black
    bright1=ed8796   # bright red
    bright2=a6da95   # bright green
    bright3=eed49f   # bright yellow
    bright4=b7bdf8   # bright blue
    bright5=c6a0f6   # bright magenta
    bright6=8bd5ca   # bright cyan
    bright7=ffffff   # bright white


    [tweak]
    box-drawing-base-thickness=0.05
  '';
  };
}

