(final: prev: {
  rofi = (prev.rofi.overrideAttrs {
    mesonBuildFlags = [
      "-Dc_args=-O3 -march=native -pipe"
    ];
  }).override {
    waylandSupport = true;
    x11Support = false;
  };
})
