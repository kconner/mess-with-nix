{
  mkDerivation,
  lib,
  gdSupport ? false, # true won't build on macOS 12
  gd,
  pkg-config
}:

mkDerivation {
  name = "graphviz";
  src = ./graphviz-2.49.3.tar.gz;
  buildInputs =
    if gdSupport
      then [
        pkg-config
        (lib.getLib gd)
        (lib.getDev gd)
      ]
    else [];
} 
