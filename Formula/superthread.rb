class Superthread < Formula
  desc "CLI for Superthread project management"
  homepage "https://github.com/steveclarke/superthread"
  url "https://github.com/steveclarke/superthread.git",
      tag:      "v0.7.2",
      revision: "5e8014d83276d80a392acc1df0b6ba321a475cb7"
  version "0.7.2"
  license "MIT"
  head "https://github.com/steveclarke/superthread.git", branch: "master"

  depends_on "pkgconf" => :build
  depends_on "ruby"
  uses_from_macos "libffi"

  def install
    ENV["GEM_HOME"] = libexec
    system "gem", "build", "superthread.gemspec"
    system "gem", "install", "--no-document", "superthread-#{version}.gem"

    # Use write_env_script for explicit PATH control — ensures Homebrew's
    # Ruby is found first, preventing mise/rbenv/asdf from hijacking at runtime
    (bin/"suth").write_env_script libexec/"bin/suth",
      PATH:     "#{Formula["ruby"].opt_bin}:#{libexec}/bin:$PATH",
      GEM_HOME: libexec,
      GEM_PATH: libexec
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/suth version")
  end
end
