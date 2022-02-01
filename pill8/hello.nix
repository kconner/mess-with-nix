with (import <nixpkgs> {});
derivation {
  name = "hello";
  builder = "${bash}/bin/bash";
  args = [ ./builder.sh ];
  buildInputs = [ gnutar gzip gnumake clang clang.bintools.bintools_bin coreutils gawk gnused gnugrep ];
  src = ./hello-2.10.tar.gz;
  system = builtins.currentSystem;
}
