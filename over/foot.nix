(final: prev: {
  foot = prev.foot.overrideAttrs {
    mesonBuildFlags = [
      # "-Dc_args=-O3 -march=native -pipe"
      "-Dc_args=-Ofast -march=native -pipe" # TODO see if Ofast breaks it
      "themes=false"
      "tests=false"
    ];
  };
})
