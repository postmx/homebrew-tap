class Postmx < Formula
  desc "CLI for the PostMX email testing API"
  homepage "https://github.com/postmx/cli"
  url "https://registry.npmjs.org/postmx-cli/-/postmx-cli-0.1.3.tgz"
  sha256 "3909ac86584f20ae95a6d44ed1990a3e3d0a61fe18252e208167caab9569fe52"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "postmx", shell_output("#{bin}/postmx --help")
  end
end
