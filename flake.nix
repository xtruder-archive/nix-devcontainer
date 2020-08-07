{
  edition = 201909;

  description = "NixOS configurations for synapse";

  inputs = {
    nixpkgs.url = "github:xtruder/nixpkgs/xtruder-nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
    devShell.x86_64-linux = with nixpkgs.legacyPackages.x86_64-linux; mkShell {
      buildInputs = [
        go_1_14
        sqlite
        cacert
        protobuf
        go-protobuf
        postgresql
      ];

      shellHook = ''
        export GO111MODULE=on
        export GOPRIVATE=github.com/xtruder/\*
        export GOPATH=~/.go
        export CGO_ENABLED=1
        export GOFLAGS="-tags=sqlite,postgres,integration,sqlite_trace"
      '';
    };
  };
}
