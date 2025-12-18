(final: prev: {
  ffmpeg = (prev.ffmpeg.overrideAttrs (old: {
    env = (old.env or {}) // {
      CFLAGS = "-O3 -march=native -pipe";
    };
  })).override {
    withSdl2 = false;
    withVulkan = false;
    withAlsa = false;
    withJack = false;
    withPulse = true;
    withCuda = false;
  };
})
