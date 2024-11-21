#!/bin/bash


apt install opam=2.1.5
opam install forester>=3.0.0
opam exec -- forester build --dev --root mon-0001 trees/
