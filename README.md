# iccvcgcc
The point of this repo is to store notes and files around my study of compilation strategies (icc, gcc for beginning, llvm/clang and others eventually).
## Set of programs to study differences between icc and gcc
Check out SO questions here: https://stackoverflow.com/questions/50476173/intel-icc-2018-vs-gcc-8-assembly-stack-init-and-finish-difference

Those files are made available for people who don't have icc right now.

.cpp : original c++ file

\_g \_i: binaries

.gcc .icc: dumps

.gcc.s .icc.s: only main()

![diff](gcc-icc_td2d.jpg "diff on main")
