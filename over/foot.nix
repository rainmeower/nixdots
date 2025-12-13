(final: prev: {
  foot = prev.foot.overrideAttrs (old: {
    mesonBuildFlags = [
      # "-Dc_args=-O3 -march=native -pipe"
      "-Dc_args=-Ofast -march=native -pipe" # TODO
    ];
  });
})
