(final: prev: {
  yazi = prev.yazi.overrideAttrs (old: {
    CARGO_PROFILE_RELEASE_LTO = "fat";
    CARGO_PROFILE_RELEASE_OPT_LEVEL = "3";
    CARGO_PROFILE_RELEASE_CODEGEN_UNITS = "1";
    CARGO_PROFILE_RELEASE_PANIC = "abort";
    CARGO_PROFILE_RELEASE_STRIP = "symbols";
    CARGO_PROFILE_RELEASE_DEBUG = false;

    env = (old.env or {}) // {
      RUSTFLAGS = "-C target-cpu=native -Z threads=16";
    };

    # TODO https://nnethercote.github.io/perf-book/build-configuration.html#alternative-allocators
  });
})
