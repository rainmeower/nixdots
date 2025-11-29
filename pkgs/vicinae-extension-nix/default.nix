{
	pkgs ? import <nixpkgs> {}
}:
pkgs.stdenvNoCC.mkDerivation {
	pname = "vicinae-extension-nix";
	# no versioning, this is just extension api version
	version = "0.16.5";

	src = pkgs.fetchurl {
		url = "https://api.vicinae.com/v1/store/knoopx/nix/download";
		hash = "sha256-V4eBLHuZy0wCL62zvvwin83y5aK9txwjp+mA7pc4WiA=";
	};

	sourceRoot = ".";

	buildInputs = with pkgs; [unzip];

	unpackPhase = ''
		unzip $src
	'';

	installPhase = ''
		runHook preInstall

		mkdir -p $out/
		cp -a ./nix/* $out/

		runHook postInstall
	'';

	meta = with pkgs.lib; {
		description = "Vicinae plugin to search Nix options and packages";
		platforms = platforms.linux;
	};
}
