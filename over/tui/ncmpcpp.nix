(final: prev: {
  ncmpcpp = (prev.ncmpcpp.overrideAttrs {
    prePatch = ''
      substituteInPlace src/status.cpp --replace-fail \
      'Paused:' \
      "ps:"
      substituteInPlace src/status.cpp --replace-fail \
      'Playing:' \
      "pl:"
      substituteInPlace src/helpers.cpp --replace-fail \
      'Added to playlist:' \
      "added:"
    '';
  }).override {
    outputsSupport = false;
    visualizerSupport = false;
    clockSupport = false;
    taglibSupport = false;
   };
})
