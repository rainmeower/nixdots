(final: prev: {
  dash = prev.dash.overrideAttrs (old: {
    env = (old.env or {}) // {
      CFLAGS = "-O3 -march=native -pipe";
    };
  });
})
