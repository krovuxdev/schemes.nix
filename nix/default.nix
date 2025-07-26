{stdenv, ...}:
stdenv.mkDerivation {
  pname = "schemes.nix";
  version = "main";

  src = ../.;

  installPhase = ''
    runHook preInstall

    mkdir -p $out/share/themes/
    install base16/*.yaml $out/share/themes/

    runHook postInstall
  '';
}
