# Installing LLVM 6 on Ubuntu 18.04

    wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add - && \
    sudo apt-add-repository "deb http://apt.llvm.org/bionic/ llvm-toolchain-bionic-6.0 main" && \
    sudo apt-get update && \
    sudo apt-get install -y clang-6.0 && \
    update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-6.0 100 && \
    update-alternatives --install /usr/bin/clang clang /usr/bin/clang-6.0 100
## Installing latest Ocaml and Opam
Opam is a package manager for Ocaml; we will use it to install the latest Ocaml (18.04/bionic apt repo is not yet up to date).

    wget https://raw.githubusercontent.com/ocaml/opam/master/shell/install.sh && \
    chmod 755 install.sh && \
    sudo ./install.sh && \
    sudo apt install make m4 git darcs mercurial bubblewrap && \
    opam init && \
    eval $(opam env)
    
(wait a bit)

If you're on 16.04/xenial bubblewrap, you'll need to:

    sudo apt-get install software-properties-common python3-software-properties
