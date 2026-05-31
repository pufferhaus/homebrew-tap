class Thruline < Formula
  desc "Minimal DSL and runtime for deterministic multiagent pipelines"
  homepage "https://thruline.work"
  url "https://github.com/pufferhaus/thruline/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "1d66a0cb851bb1707008f3791fabf90df9752c567a4b836bdb4b71effae2eefc"
  license "MIT"
  head "https://github.com/pufferhaus/thruline.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_args, "--path", "."
  end

  test do
    assert_match "thruline", shell_output("#{bin}/thruline --help")
  end
end
