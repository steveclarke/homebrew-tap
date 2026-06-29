class ScnCliDownloadStrategy < GitDownloadStrategy
  SSH_URL = "ssh://git@github.com/steveclarke/scn.git".freeze
  def fetch(timeout: nil)
    super
  rescue ErrorDuringExecution
    ohai "HTTPS Git fetch failed; retrying with SSH"
    @url = SSH_URL
    clear_cache if cached_location.exist?
    super
  end
end

class ScnCli < Formula
  desc "CLI for the Saltbox Church Network app"
  homepage "https://github.com/steveclarke/scn"
  url "https://github.com/steveclarke/scn.git",
      using:    ScnCliDownloadStrategy,
      tag:      "scn-cli-v0.1.0",
      revision: "6cd59e1fd2dcf90afa54bfc86f39b27b50448fb2"
  license "MIT"
  version "0.1.0"
  head "https://github.com/steveclarke/scn.git",
       using:  ScnCliDownloadStrategy,
       branch: "master"
  depends_on "go" => :build

  def install
    cd "clients/scn-cli" do
      commit = Utils.git_short_head(buildpath, length: 7)
      ldflags = %W[
        -s -w
        -X github.com/steveclarke/scn/clients/scn-cli/cmd.version=#{version}
        -X github.com/steveclarke/scn/clients/scn-cli/cmd.commit=#{commit}
        -X github.com/steveclarke/scn/clients/scn-cli/cmd.date=#{time.iso8601}
      ]
      system "go", "build", *std_go_args(ldflags:, output: bin/"scn")
      generate_completions_from_executable(bin/"scn", "completion")
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scn version")
  end
end
