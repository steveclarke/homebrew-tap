class OutportCrm < Formula
  desc "CLI for Outport CRM"
  homepage "https://github.com/myunio/outport-clients"
  url "https://github.com/myunio/outport-clients.git",
      tag:      "crm-cli/v0.2.0",
      revision: "8da2e144cf813b55bee04f47216400d418e354a2"
  version "0.2.0"
  license "MIT"

  depends_on "pkgconf" => :build
  depends_on "ruby"
  uses_from_macos "libffi"

  def install
    ENV["GEM_HOME"] = libexec
    ENV["GEM_PATH"] = libexec
    cd "crm-cli" do
      system "gem", "build", "outport-crm.gemspec"
      system "gem", "install", "--no-document", "outport-crm-#{version}.gem"
    end

    (bin/"ocrm").write_env_script libexec/"bin/ocrm",
      PATH:     "#{Formula["ruby"].opt_bin}:#{libexec}/bin:$PATH",
      GEM_HOME: libexec,
      GEM_PATH: libexec
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ocrm version")
  end
end
