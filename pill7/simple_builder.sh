export PATH="$coreutils/bin:$gcc/bin:$bintools_unwrapped/bin"
declare -xp
mkdir $out
gcc -o $out/simple $src
