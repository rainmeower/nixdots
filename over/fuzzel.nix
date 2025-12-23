(final: prev: {
  fuzzel = prev.fuzzel.overrideAttrs {
    mesonBuildFlags = [
      # "-Dc_args=-O3 -march=native -pipe"
      "-Dc_args=-Oz -march=native -pipe" # TODO see if Ofast breaks it
    ];
  };
})
