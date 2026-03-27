class Postmx < Formula
  desc "CLI for the PostMX email testing API"
  homepage "https://github.com/postmx/cli"
  url "https://registry.npmjs.org/postmx-cli/-/postmx-cli-0.1.4.tgz"
  sha256 "7f916440b25d5e3cefd9aeaa5d9399cd19cc59b2647074ac341943da350374b3"
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
