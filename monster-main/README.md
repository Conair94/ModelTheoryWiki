To build this forest, you need to have a working installation of the following software:

- LaTeX, preferably the _full_ [TeXLive distribution](https://tug.org/texlive/)

- `forester`, which you can install using `opam install forester`; at times, you may need to build from [source](https://git.sr.ht/~jonsterling/ocaml-forester) if I haven't released the latest version to opam

Once you have ensured that these programs are installed and in your `PATH`, simply run `./build.sh`. To view the forest, you can open `output/index.xml` in your favorite browser: for Firefox, you may need to set `security.fileuri.strict_origin_policy` to `false` in `about:config`. Alternatively, you can serve the `output` directory from a local webserver to avoid this.

If you have [`fswatch`](https://github.com/emcrisostomo/fswatch) installed, you can run `./watch.sh` to watch for changes to the `trees` directory and rebuild accordingly.

If you prefer to use [`nix`](https://github.com/NixOS/nix), you can simply run `nix develop` to enter a shell with TexLive and `fswatch` available. If you additionally use [`direnv`](https://direnv.net/), run `direnv allow` to automatically enter the shell when you enter the repository. Note that this is entirely optional.

### JavaScript dependencies

This forest has a small JavaScript component (`javascript/forester.js`), which creates a keyboard command palette. There is no need to have any of the JavaScript or Node ecosystem installed on your machine; all JavaScript dependencies are kept bundled in source control. If you wish to _upgrade_ this bundle, you will need to have a working installation of `npm`, and then run `./bundle-js.sh` and commit the resulting changes. It is not ordinarily necessary to do this.
