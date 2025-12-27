(final: prev: {
  btop = (prev.btop.overrideAttrs {
    prePatch = ''
      substituteInPlace src/btop_draw.cpp --replace-fail \
      '"Used:"' \
      '"u"'
      substituteInPlace src/btop_draw.cpp --replace-fail \
      '"MemAvailable:"' \
      '"a"'
      substituteInPlace src/linux/btop_collect.cpp --replace-fail \
      '"Cached:"' \
      '"c"'
      substituteInPlace src/btop_draw.cpp --replace-fail \
      '"Free:"' \
      '"f"'

      substituteInPlace src/btop_draw.cpp --replace-fail \
      '" Used:"' \
      '" u"'
      substituteInPlace src/btop_draw.cpp --replace-fail \
      '" Free:"' \
      '" f"'
      substituteInPlace src/btop_draw.cpp --replace-fail \
      '"U"' \
      '"u"'
      substituteInPlace src/btop_draw.cpp --replace-fail \
      '"F"' \
      '"f"'
    '';
  }).override {
    rocmSupport = true;
   };
})
