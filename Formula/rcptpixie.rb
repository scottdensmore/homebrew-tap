class Rcptpixie < Formula
  desc "A command-line tool that automatically renames PDF receipts using AI-powered text extraction"
  homepage "https://github.com/scottdensmore/rcptpixie"
  url "https://github.com/scottdensmore/rcptpixie/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "8259dce943286fa874c588236c2b48e396bf1bdec05f01a3562e14c426e8da16"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/rcptpixie", "-version"
  end
end 