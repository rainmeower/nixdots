(final: prev: {
  obs = (prev.obs-studio.overrideAttrs {
    cmakeFlags = [
      "-DCMAKE_C_FLAGS=-O3 -march=native -pipe"
      "-DCMAKE_CXX_FLAGS=-O3 -march=native -pipe"
    ];
  }).override {
    alsaSupport = false;
    pulseaudioSupport = false;
    pipewireSupport = true;
    # browserSupport = true;
   };
})
