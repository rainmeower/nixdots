(final: prev: {
  luajit = prev.luajit.overrideAttrs (old: {
    env = (old.env or {}) // {
      CFLAGS = "-O3 -march=native -pipe";
    };
  });
})
