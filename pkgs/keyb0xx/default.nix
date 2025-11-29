{
	pkgs ? import <nixpkgs> {}
}:
pkgs.stdenv.mkDerivation {
	pname = "keyb0xx";
	version = "0";

	src = pkgs.fetchFromGitLab {
		owner = "liamjen";
		repo = "keyb0xx";
		rev = "b2e53a2c5bca808c08b235327ffd76494ad23b32";
		hash = "sha256-bWHddDxUPDMU+Y9c+RYZxCPnPruU1Cx86ASYBVDrulM=";
	};

  buildInputs = with pkgs; [ libevdev ];
  nativeBuildInputs = with pkgs; [ pkg-config ];

  installFlags = [
    "DESTDIR=$(out)"
    "PREFIX="
  ];

  prePatch = let
	  config = ../../stuff/keyb0xx/config.h;
  in ''
    substituteInPlace Makefile --replace-fail \
    '/usr/include/libevdev-1.0' \
    "$(pkg-config --cflags libevdev | cut -c 3-)"

    substituteInPlace keyboard_device.c --replace-fail \
    'kb_device_name_tag = "Keyboard";' \
    'kb_device_name_tag = "liliums Lily58";'

	  cp -f ${config} config.h
  '';

	# buildPhase = let
	#   config = ../../stuff/keyb0xx/config.h;
	#  in ''
	#    make
	#    # rm Makefile
	#
	#    # gcc ${pkgs.libevdev}/include/libevdev-1.0 $^ -levdev -o keyb0xx.c keyboard_device.c config.h values.h
	#  '';

	installPhase = ''
		runHook preInstall

    make

		mkdir -p $out/
		cp * $out/

		runHook postInstall
	'';

	meta = with pkgs.lib; {
		description = "Keyboard B0XX emulator program for Linux using evdev.";
		platforms = platforms.linux;
	};
}
