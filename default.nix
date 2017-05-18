{ mkDerivation, base, base-compat, jsaddle, lens, stdenv, text
, transformers
}:
mkDerivation {
  pname = "jsaddle-dom";
  version = "0.9.0.0";
  src = builtins.filterSource (path: type: !(builtins.elem (baseNameOf path) [ ".git" "dist" ])) ./.;
  libraryHaskellDepends = [
    base base-compat jsaddle lens text transformers
  ];
  description = "DOM library that uses jsaddle to support both GHCJS and GHC";
  license = stdenv.lib.licenses.mit;
}
