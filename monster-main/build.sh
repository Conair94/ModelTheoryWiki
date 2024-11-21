#!/bin/bash


sudo apt install opam
opam init
opam install "forester<=3.1.0"
echo "Y" | opam exec -- forester build --dev --root mon-0001 trees/
