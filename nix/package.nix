{
  pkgs,
  stdenvNoCC,
  fetchFromGitHub,
}:
stdenvNoCC.mkDerivation {
  pname = "needy_overdose-gtk-theme";
  version = "0-unstable-04-11-2022";

  src = fetchFromGitHub {
    owner = "Natsuhane-Ayari";
    repo = "Needy_girl_overdose_theme";
    rev = "227babfdc288cbc805b9f2644a9d23ea030b80ad";
    hash = "sha256-S9uK4t4a8XhfLB69t3kUQuVrYx6AFvurSoOWzM5wN2Q";
  };

  dontBuild = true;

  installPhase = ''
    runHook preInstall

    mkdir -p $out/share/themes

    cp -r $src/* $out/share/themes

    runHook postInstall
  '';
}
