with (import <nixpkgs> {});
derivation {
  name = "simple";
  builder = "${bash}/bin/bash";
  args = [ ./simple_builder.sh ];
  inherit gcc coreutils;
  bintools_unwrapped = bintools-unwrapped;
  src = ./simple.c;
  system = builtins.currentSystem;
}
