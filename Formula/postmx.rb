class Postmx < Formula
  desc "CLI for the PostMX email testing API"
  homepage "https://github.com/postmx/cli"
  url "https://registry.npmjs.org/postmx-cli/-/postmx-cli-0.1.2.tgz"
  sha256 "a29721f826620a038b7a9ce9374748533666c0094a5f82153dbec4b51bcf16c0"
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
