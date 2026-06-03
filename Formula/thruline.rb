class Thruline < Formula
  desc "Minimal DSL and runtime for deterministic multiagent pipelines"
  homepage "https://thruline.work"
  url "https://github.com/dove-tools/thruline/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "ae325e1616002daf4b30b7868c8e3bd3b4c911f4a5ccf9d399e4401e5a317b37"
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
