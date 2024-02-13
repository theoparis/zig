{
	description = "The Zig compiler";

	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
		flake-utils.url = "github:numtide/flake-utils";
	};

	outputs = {
		self,
		nixpkgs,
		flake-utils,
		...
	} @ inputs:
		flake-utils.lib.eachDefaultSystem (
			system: let
				pkgs = import nixpkgs { inherit system; };
			in {
				devShells.default = pkgs.mkShell {
					nativeBuildInputs = with pkgs; [
						cmakeMinimal
						libxml2
						ninja
						zlib
						zstd
						stdenv.cc.cc.lib
					] ++ (with llvmPackages_17; [
						clang
						clang-unwrapped
						lld
						llvm
					]);

					hardeningDisable = ["all"];
				};

				packages.default = pkgs.pkgsStatic.stdenv.mkDerivation {
					name = "zig";
					src = ./.;
					buildInputs = with pkgs.pkgsStatic; [
						libxml2
						zlib
						zstd
						stdenv.cc.cc.lib
					] ++ (with llvmPackages_17; [
						clang
						clang-unwrapped
						lld
						llvm
					]);

					nativeBuildInputs = with pkgs; [
						ccache
						ninja
						cmakeMinimal
					];

					cmakeFlags = [
						"-DZIG_USE_CCACHE=ON"
					];
				};
			}
		);
}
