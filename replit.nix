{pkgs}: {
  deps = [
    pkgs.fetchutils
    pkgs.zip
    pkgs.python-launcher
	pkgs.portmidi
	pkgs.libpng
	pkgs.libjpeg
	pkgs.fontconfig
	pkgs.SDL2_ttf
	pkgs.SDL2_mixer
	pkgs.SDL2_image
	pkgs.SDL2
	pkgs.xsimd
	pkgs.libxcrypt
	pkgs.tk
	pkgs.tcl
	pkgs.qhull
	pkgs.pkg-config
	pkgs.gtk3
	pkgs.gobject-introspection
	pkgs.ghostscript
	pkgs.freetype
	pkgs.ffmpeg-full
	pkgs.cairo
  ];
}
