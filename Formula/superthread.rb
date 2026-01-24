class Superthread < Formula
  desc "CLI for Superthread project management"
  homepage "https://github.com/steveclarke/superthread"
  url "https://github.com/steveclarke/superthread.git",
      tag:      "v0.1.4",
      revision: "5781e910ecb5e0c7077aa9497597bef2fcf87faf"
  version "0.1.4"
  license "MIT"
  head "https://github.com/steveclarke/superthread.git", branch: "master"

  depends_on "ruby"

  def install
    ENV["GEM_HOME"] = libexec
    ENV["GEM_PATH"] = libexec

    # Install dependencies (excluding dev/test groups)
    system "bundle", "config", "set", "--local", "without", "development:test"
    system "bundle", "install"

    # Build and install the gem
    system "gem", "build", "superthread.gemspec"
    system "gem", "install", "--ignore-dependencies", "superthread-#{version}.gem"

    # Install binary
    bin.install libexec/"bin/suth"
    bin.env_script_all_files(libexec/"bin", GEM_HOME: libexec, GEM_PATH: libexec)
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/suth version")
  end
end
