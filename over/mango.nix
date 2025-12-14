(final: prev: {
  my_mango = prev.mango.overrideAttrs {
    mesonBuildFlags = [
      "-Dc_args=-O3 -march=native -pipe"
    ];
  };
})
