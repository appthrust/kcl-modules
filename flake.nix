{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    kclpkgs.url = "github:appthrust/kcl-nix/09645bef8b60aef2f32c17676fbafd7f64b0e5a3";
  };

  outputs = { self, nixpkgs, flake-utils, kclpkgs }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
        };
        kcl = kclpkgs.default.${system};
        tools = with pkgs; [
            kcl.cli
            kcl.language-server
          ] ++ (with pkgs-2405; [ ]);
      in
      {
        # Support for IDEs
        # `nix profile install` installs to ~/.nix-profile/bin, so you can use tools outside of /workspace.
        # This allows VS Code or JetBrains IDE processes to start outside of /workspace.
        defaultPackage = pkgs.symlinkJoin {
          name = "workspace-tools";
          paths = tools;
        };
        devShells.default = pkgs.mkShell {
          buildInputs = tools;
          shellHook = ''
          '';
        };
        formatter = pkgs.nixpkgs-fmt;
      }
    );
}
