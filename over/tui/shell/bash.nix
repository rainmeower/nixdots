(final: prev: {
  bash = prev.bash.overrideAttrs (old: {
    CFLAGS = "-O3 -march=native -pipe";
  });
})
