class Thruline < Formula
  desc "Minimal DSL and runtime for deterministic multiagent pipelines"
  homepage "https://thruline.work"
  url "https://github.com/pufferhaus/thruline/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "15efca8a60dce22fa0bd4e85e831736bf6b817fd46cdfb9b935c3532f99045ae"
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
