FROM devcontainer:q6jniiwix2vg07w4g8h2biigiwswr0y9

ARG NIXPKGS=https://github.com/xtruder/nixpkgs/archive/xtruder-nixos-unstable.tar.gz
ARG HOME_MANAGER=https://github.com/xtruder/home-manager/archive/nix-profiles-2-0.tar.gz

ENV NIX_PATH nixpkgs=${NIXPKGS}:home-manager=${HOME_MANAGER}

# install home-manager and symlink workspace config
RUN nix-shell ${HOME_MANAGER} -A install && \
  rm ~/.config/nixpkgs/home.nix && \
  ln -s ~/workspace/.devcontainer/home.nix ~/.config/nixpkgs/home.nix