class Rcptpixie < Formula
  desc "A command-line tool that automatically renames PDF receipts using AI-powered text extraction"
  homepage "https://github.com/scottdensmore/rcptpixie"
  url "https://github.com/scottdensmore/rcptpixie/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "c93dca38a706fc7597fff147229eb148b758885c4d5c12b68bacadedb313c5db"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/rcptpixie", "-version"
  end
end 