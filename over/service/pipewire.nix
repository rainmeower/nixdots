(final: prev: {
  pipewire = (prev.pipewire.overrideAttrs {
    mesonBuildFlags = [
      "-Dc_args=-O3 -march=native -pipe"
    ];
  }).override {
    x11Support = false;
  };
})
