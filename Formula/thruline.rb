class Thruline < Formula
  desc "Minimal DSL and runtime for deterministic multiagent pipelines"
  homepage "https://thruline.work"
  url "https://github.com/dove-tools/thruline/archive/refs/tags/v0.0.0-taptest.tar.gz"
  sha256 "7a1aaff447ac9e3b0f033f49b2bdadb324369233b3eb5ca3b0903da93a8dfd80"
  license "MIT"
  head "https://github.com/dove-tools/thruline.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_args, "--path", "."
  end

  test do
    assert_match "thruline", shell_output("#{bin}/thruline --help")
  end
end
