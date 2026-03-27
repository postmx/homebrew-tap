class Postmx < Formula
  desc "CLI for the PostMX email testing API"
  homepage "https://github.com/postmx/cli"
  url "https://registry.npmjs.org/postmx-cli/-/postmx-cli-0.1.7.tgz"
  sha256 "2cc45dbb3257e5042162081429f6a0a89aec769aabc82c7565f6618942977681"
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
