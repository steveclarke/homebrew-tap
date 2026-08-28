cask "gander" do
  version "0.1.29"
  sha256 "de24b46cb8a19649df6899eda5715da79c0acd8fa4e047ffcb334644e337eb36"

  url "https://github.com/steveclarke/gander/releases/download/v#{version}/Gander-#{version}-arm64.dmg"
  name "Gander"
  desc "Review code diffs, branches, and pull requests"
  homepage "https://github.com/steveclarke/gander"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :catalina

  app "Gander.app"
end
