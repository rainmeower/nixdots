(final: prev: {
  uutils-coreutils-noprefix = prev.uutils-coreutils-noprefix.overrideAttrs (old: {

    CARGO_PROFILE_RELEASE_LTO = "fat";
    CARGO_PROFILE_RELEASE_OPT_LEVEL = "3";
    CARGO_PROFILE_RELEASE_CODEGEN_UNITS = "1";
    CARGO_PROFILE_RELEASE_PANIC = "abort";
    CARGO_PROFILE_RELEASE_STRIP = "symbols";
    CARGO_PROFILE_RELEASE_DEBUG = "none";

    env = (old.env or {}) // {
      # RUSTFLAGS = "-C target-cpu=native -Z threads=16";
      RUSTFLAGS = "-C target-cpu=native";
    };
  });
})
