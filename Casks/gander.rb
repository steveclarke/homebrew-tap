cask "gander" do
  version "0.1.10"
  sha256 "1e39cf081baa6aea1c60093675692cf3537d809486f073f31481635fe95e0266"

  url "https://github.com/steveclarke/gander/releases/download/v#{version}/Gander-#{version}-arm64.dmg"
  name "Gander"
  desc "Review code diffs, branches, and pull requests"
  homepage "https://github.com/steveclarke/gander"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :catalina

  app "Gander.app"
end
