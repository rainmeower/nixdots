(final: prev: {
  neovim = prev.neovim.overrideAttrs {
    cmakeFlags = [
      "-DCMAKE_C_FLAGS=-Ofast -march=native -pipe"
      "-DCMAKE_CXX_FLAGS=-Ofast -march=native -pipe"
    ];
  };
})
