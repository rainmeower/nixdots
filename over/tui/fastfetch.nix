(final: prev: {
  fastfetch = prev.fastfetch.override {
    dbusSupport = true;
    terminalSupport = true;
    imageSupport = true;
    openclSupport = true;
    openglSupport = true;
    sqliteSupport = true;
    vulkanSupport = true;
    waylandSupport = true;
    flashfetchSupport = false;
    gnomeSupport = true;
    rpmSupport = false;
    x11Support = false;
    xfceSupport = false;
    zfsSupport = false;
    audioSupport = false;
    brightnessSupport = false;
  };
})
