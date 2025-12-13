(final: prev: {
  mpv = prev.mpv.overrideAttrs {
    mesonBuildFlags = [
      "-Dc_args=-O3 -march=native -pipe"
    ];
  };
})
