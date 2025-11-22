(final: prev: {
  gtk4 = prev.gtk4.override {
    x11Support = false;
    waylandSupport = true;
    # cupsSupport = false;
  };
})
(final: prev: {
  gtk3 = prev.gtk3.override {
    x11Support = false;
    waylandSupport = true;
    # cupsSupport = false;
  };
})
