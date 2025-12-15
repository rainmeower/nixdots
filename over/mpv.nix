# FIXME ignores and uses binary cache
(final: prev: {
  mpv = prev.mpv.overrideAttrs {
    mesonBuildFlags = [
      # "-Dc_args=-O3 -march=native -pipe"
      "-Dc_args=-Ofast -march=native -pipe" # TODO
    ];
  };
})
