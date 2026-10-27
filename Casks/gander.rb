cask "gander" do
  version "0.1.37"
  sha256 "a347575b28b4c1fdad665b6cb62ebeb300fbfc45f669f46e3580a2b4faf0ce6f"

  url "https://github.com/steveclarke/gander/releases/download/v#{version}/Gander-#{version}-arm64.dmg"
  name "Gander"
  desc "Review code diffs, branches, and pull requests"
  homepage "https://github.com/steveclarke/gander"

  auto_updates true
  depends_on arch: :arm64

  app "Gander.app"
end
