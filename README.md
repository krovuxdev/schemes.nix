# Add the input to your `flake.nix`:
```nix
{
  inputs = {
     schemes-nix.url = url = "github:krovuxdev/schemes.nix";
    };
}
```

# Use in `configuration.nix` or `home.nix`:
```nix
    pkgs = import inputs.nixpkgs {
      overlays = [ inputs.schemes-nix.overlays.default ];
    };
```

# Stylix usage
```nix
    base16Scheme = "${pkgs.schemes-nix}/share/themes/krovux-dark.yaml";
```
