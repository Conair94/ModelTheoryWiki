#!/bin/bash


sudo apt install opam
opam init
opam install --yes "forester<=3.1.0"
opam exec -- forester build --dev --root mon-0001 trees/
