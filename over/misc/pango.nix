(final: prev: {
  pango = prev.pango.overrideAttrs {
    mesonBuildFlags = [
      "-Dc_args=-O3 -march=native -pipe"
    ];
  };
})
