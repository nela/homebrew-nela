cask "supercollider" do
  version "3.11.2"

  if MacOS.version <= :big_sur
    sha256 "149772db998cff4cddc54c6c5f90d1bb1190778c09cf4caa18fb71c458f5e89c"
    url "https://github.com/supercollider/supercollider/releases/download/Version-#{version}/SuperCollider-#{version}+BigSur.aed25fa.zip",
      verified: "github.com/supercollider/supercollider/"
  else
    sha256 "0c6cd9c26adfece4eccd2c76156119338603001bbd1999b037a05b154a2adb0c"
    url "https://github.com/supercollider/supercollider/releases/download/Version-#{version}/SuperCollider-#{version}-macOS-signed.zip",
      verified: "github.com/supercollider/supercollider/"
  end

  name "SuperCollider"
  homepage "https://supercollider.github.io/"

  livecheck do
    url :url
    strategy :git
    regex(/^Version-(\d+(?:\.\d+)*)$/i)
  end

  app "SuperCollider/SuperCollider.app"
end
