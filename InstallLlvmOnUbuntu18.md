# Installing c, c++, ocaml and setup a friendly development environment to create compiler
## Installing LLVM 6 on Ubuntu 18.04

    wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add - && \
    sudo apt-add-repository "deb http://apt.llvm.org/bionic/ llvm-toolchain-bionic-6.0 main" && \
    sudo apt-get update && \
    sudo apt-get install -y clang-6.0 && \
    update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-6.0 100 && \
    update-alternatives --install /usr/bin/clang clang /usr/bin/clang-6.0 100

## Installing latest Ocaml and Opam and merlin
Opam is a package manager for Ocaml; we will use it to install the latest Ocaml (18.04/bionic apt repo is not yet up to date).

    wget https://raw.githubusercontent.com/ocaml/opam/master/shell/install.sh && \
    chmod 755 install.sh && \
    sudo ./install.sh && \
    sudo apt install make m4 git darcs mercurial bubblewrap && \
    opam init && \
    eval $(opam env)
    
(wait a bit)

If you're on 16.04/xenial, there is no package `bubblewrap`, so you'll need to:

    sudo apt-get install software-properties-common python3-software-properties && \
    sudo add-apt-repository ppa:ansible/bubblewrap && \
    sudo apt-get update && \
    sudo apt install bubblewrap

Now let's pick the Ocaml version you want:

    opam switch list-available && \
    opam switch create . 4.08.0+trunk && \
    opam install merlin && \
    opam user-setup install

### Setup a crossplatform VScode to develop under Windows 10 using GNU/Linux tools
Just install [Visual Studio Code (vscode)](https://code.visualstudio.com/) for Windows.
In particular, to get ocaml static analysis work on vscode windows with ocaml/opam/merlin for linux, you need to use the extension
[**OCaml and Reason IDE - for WSL**](https://marketplace.visualstudio.com/items?itemName=raiscui.reasonml-wsl).
You'll need to make sure that `~/.opam/default/bin/` is in your path:

    echo "export PATH=~/.opam/default/bin/;$PATH" >> .bashrc
    
Configure the extension, then it should work fine. You can eventually activate **codelens** for ocaml. 

### Add bucklescript for more static analysis
You might eventually want to add also the [BuckleScript](https://github.com/BuckleScript/bucklescript/wiki/Installation) to work with merlin; but bucklescript works with a specific edition of ocaml (4.02.3+buckle-1), that you can install with `opam update && opam switch 4.02.3+buckle-1` (and then you can switch between different editions of ocaml with `ocaml switch set XXX` (list those installed them with `ocaml switch list`)).
