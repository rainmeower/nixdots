(final: prev: {
  dash = prev.dash.overrideAttrs (old: {
    CFLAGS = "-O3 -march=native -pipe";
  });
})
