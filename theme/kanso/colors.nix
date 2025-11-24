rec {
  bg_opacity = 0.8;

  accent = blue;

  foreground = fg;
  text       = fg;
  bg         = zen_bg0;
  background = bg;
  bgtrans    = "${bg}CC"; # 80% opacity

  grey   = gray5;
  gray   = grey;
  purple = violet;
  magenta = violet;
  black  = zen_bg0;
  white  = fg2;
  cyan   = blue4;
  aqua   = blue4;

  button = zen_bg2;
  button_hover = zen_bg3;


# zen bg shades
  zen_bg0 = "#090E13";
  zen_bg1 = "#1C1E25";
  zen_bg2 = "#22262D";
  zen_bg3 = "#393B44";

# ink bg shades
  ink_bg0 = "#14171d";
  ink_bg1 = "#1f1f26";
  ink_bg2 = "#22262D";
  ink_bg3 = "#393B44";
  ink_bg4 = "#4b4e57";

# mist bg shades
  mist_bg0 = "#22262D";
  mist_bg1 = "#2a2c35";
  mist_bg2 = "#393B44";
  mist_bg3 = "#5C6066";


# fg
  fg    = "#C5C9C7";
  fg2   = "#f2f1ef";

  gray1 = "#717C7C";
  gray2 = "#A4A7A4";
  gray3 = "#909398";
  gray4 = "#75797f";
  gray5 = "#5C6066";


  altBlue1 = "#223249";
  altBlue2 = "#2D4F67";


# main colors
  red     = "#c4746e";
  red2    = "#E46876";
  red3    = "#C34043";
  yellow  = "#c4b28a";
  yellow2 = "#E6C384";
  yellow3 = "#DCA561";
  green   = "#8a9a7b";
  green2  = "#87a987";
  green3  = "#98BB6C";
  green4  = "#6A9589";
  green5  = "#7AA89F";
  blue    = "#8ba4b0";
  blue2   = "#658594";
  blue3   = "#7FB4CA";
  blue4   = "#8ea4a2";
  violet  = "#938AA9";
  violet2 = "#8992a7";
  violet3 = "#949fb5";
  pink    = "#a292a3";
  orange  = "#b6927b";
  orange2 = "#b98d7b";



# saturated variants (20% more saturation)
  red_sat     = "#CA675F";
  red2_sat    = "#ED5965";
  red3_sat    = "#C93134";
  yellow_sat  = "#CAAC7A";
  yellow2_sat = "#EDC272";
  yellow3_sat = "#E59F49";
  green_sat   = "#7F9F6E";
  green2_sat  = "#7CAF7C";
  green3_sat  = "#8FC055";
  green4_sat  = "#5B9A82";
  green5_sat  = "#6BAE97";
  blue_sat    = "#7EAABA";
  blue2_sat   = "#568B8F";
  blue3_sat   = "#6EBBD4";
  blue4_sat   = "#81AAA9";
  violet_sat  = "#8A88B0";
  violet2_sat = "#7E91AF";
  violet3_sat = "#8A9FBE";
  pink_sat    = "#A08AA2";
  orange_sat  = "#BC8A6C";
  orange2_sat = "#BF856B";
  aqua_sat    = "#81AAA9";



# syntax highlighting
  keyword = violet2;
  method  = yellow;
  var     = fg;
  arg     = gray3;
  func    = blue;
  string  = green;
  num     = pink;
  bool    = orange;
  const   = orange;
  type    = blue4;
  comment = gray4;
  punc    = gray3;
  selection = zen_bg3;
}
