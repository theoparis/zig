{
	description = "Zig compiler development.";

	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
		flake-utils.url = "github:numtide/flake-utils";

		# Used for shell.nix
		flake-compat = {
			url = "github:edolstra/flake-compat";
			flake = false;
		};
	};

	outputs = {
		self,
		nixpkgs,
		flake-utils,
		...
	} @ inputs:
		flake-utils.lib.eachDefaultSystem (
			system: let
				pkgs = import nixpkgs {inherit system;};
			in {
				devShells.default = pkgs.mkShell {
					nativeBuildInputs = with pkgs;
						[
							cmakeMinimal
							libxml2
							ninja
							zlib
							zstd
							stdenv.cc.cc.lib
						]
						++ (with llvmPackages_17; [
							clang
							clang-unwrapped
							lld
							llvm
						]);

					hardeningDisable = ["all"];
				};
			}
		);
}
