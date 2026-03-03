class Codi < Formula
  desc "AI coding agent for your terminal"
  homepage "https://github.com/gemdoq/codi"
  url "https://registry.npmjs.org/@gemdoq/codi/-/codi-0.1.0.tgz"
  sha256 "a2e19413c2660a59a07679a679888b04ca97f2423cd553b401837b62f54f4bee"
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
