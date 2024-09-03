{ pkgs }: {
  deps = [
    pkgs.nodejs-18_x  # Replace pkgs.nodejs-20_x with this line
    pkgs.python310Full
    pkgs.ffmpeg
    pkgs.libuuid
    pkgs.libopus.out
  ];
  env = {
    LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [pkgs.libuuid];
  };
}