(final: prev: {
  # ncmpcpp = prev.ncmpcpp.override {
  #   outputsSupport = false;
  #   visualizerSupport = false;
  #   clockSupport = false;
  #   taglibSupport = false;
  # };


  ncmpcpp = (prev.ncmpcpp.overrideAttrs {
    prePatch = ''
    substituteInPlace src/status.cpp --replace-fail \
    'Paused:' \
    "ps:"

    substituteInPlace src/status.cpp --replace-fail \
    'Playing:' \
    "pl:"
    '';
  }).override {
    outputsSupport = false;
    visualizerSupport = false;
    clockSupport = false;
    taglibSupport = false;
   };
})
