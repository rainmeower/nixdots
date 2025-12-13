(final: prev: {
  nushell = prev.nushell.overrideAttrs {
    CARGO_PROFILE_RELEASE_LTO = "fat";
    CARGO_PROFILE_RELEASE_OPT_LEVEL = "3";
    CARGO_PROFILE_RELEASE_CODEGEN_UNITS = "1";
    CARGO_PROFILE_RELEASE_PANIC = "abort";
    CARGO_PROFILE_RELEASE_STRIP = "symbols";
    CARGO_PROFILE_RELEASE_DEBUG = "none";
    # FIXME conflicts with env and cant access lib
    # RUSTFLAGS = lib.mkForce "-C target-cpu=native -Z threads=16";
  };
})
