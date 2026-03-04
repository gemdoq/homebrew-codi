class Codi < Formula
  desc "AI coding agent for your terminal"
  homepage "https://github.com/gemdoq/codi"
  url "https://registry.npmjs.org/@gemdoq/codi/-/codi-0.1.2.tgz"
  sha256 "a8646caf46a2987eda33086bdb48c424280c27164c965b4f91f13e6ce66034ac"
  license "MIT"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "codi v", shell_output("#{bin}/codi --version")
  end
end
