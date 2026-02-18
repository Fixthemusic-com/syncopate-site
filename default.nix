{pkgs, ...}: let
  devShell = pkgs.mkShell {
    buildInputs = [
      pkgs.nodejs
    ];

    shellHook = ''
      echo "🌐 Syncopate Web — Node.js $(node --version) | npm $(npm --version)"
    '';
  };
in {
  inherit devShell;
}
