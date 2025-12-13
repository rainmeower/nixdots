# TODO ignores and uses binary cache
(final: prev: {
  swayimg = prev.swayimg.overrideAttrs {
    mesonBuildFlags = [
      "-Dc_args=-O3 -march=native -pipe"
    ];
  };
})
