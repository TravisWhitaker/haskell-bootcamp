# haskell-bootcamp

Revised Haskell Bootcamp Slides and Examples

## Setup

You can use Nix to setup the environment used with these presentations, and you
can use Cachix to download pre-built binaries so you don't have to waste time
compiling the parts of the environment on your machine.

- [Get Nix](https://nixos.org/nix/)

- Get Cachix: `nix-env -iA cachix -f https://cachix.org/api/v1/install`

- Use the Haskell Bootcamp cache: `cachix use haskell-bootcamp`

- Enter the shell environment: `nix-shell`
