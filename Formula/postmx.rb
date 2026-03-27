class Postmx < Formula
  desc "CLI for the PostMX email testing API"
  homepage "https://github.com/postmx/cli"
  url "https://registry.npmjs.org/postmx-cli/-/postmx-cli-0.1.1.tgz"
  sha256 "8690bd34cf19d7e68c4ba2783d60040eae4e179b917dc8c32be97300527da996"
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
