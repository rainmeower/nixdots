(final: prev: {
  mpd = prev.mpd.overrideAttrs {
    mesonBuildFlags = [
      "-Dc_args=-O3 -march=native -pipe"
    ];
  };
})
