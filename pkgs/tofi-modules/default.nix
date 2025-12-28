{
  lib,
  stdenv,
  fetchFromGitHub,
  pkg-config,
  ninja,
  meson,
  scdoc,
  wayland-protocols,
  wayland-scanner,
  freetype,
  harfbuzz,
  cairo,
  pango,
  wayland,
  libxkbcommon,
  libqalculate,
}:

stdenv.mkDerivation rec {
  pname = "tofi-modules";
  version = "f64a3fcc44848c74dc351f0c0cb214bd965590e8";

  src = fetchFromGitHub {
    owner = "F-4Dev";
    repo = "tofi";
    rev = "f64a3fcc44848c74dc351f0c0cb214bd965590e8";
    sha256 = "sha256-fH6ZQDRusp2EOqcW/Vw3U3keieng4Byl7zSXQ4lK00I=";
  };

  depsBuildBuild = [ pkg-config ];
  nativeBuildInputs = [
    meson
    ninja
    pkg-config
    scdoc
    wayland-protocols
    wayland-scanner
    libqalculate
  ];
  buildInputs = [
    freetype
    harfbuzz
    cairo
    pango
    wayland
    libxkbcommon
  ];

  meta = {
    description = "Tiny dynamic menu for Wayland";
    homepage = "https://github.com/philj56/tofi";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fbergroth ];
    platforms = lib.platforms.linux;
    mainProgram = "tofi";
  };
}
