cask "gander" do
  version "0.1.35"
  sha256 "bd1a4c2faae4ebe36f26e2e52e98f57f7b6fda42107e25a712fb044b98c6becc"

  url "https://github.com/steveclarke/gander/releases/download/v#{version}/Gander-#{version}-arm64.dmg"
  name "Gander"
  desc "Review code diffs, branches, and pull requests"
  homepage "https://github.com/steveclarke/gander"

  auto_updates true
  depends_on arch: :arm64

  app "Gander.app"
end
