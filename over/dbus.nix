final: prev: {
  dbus = prev.dbus.override {
    x11Support = false;
  };
}
