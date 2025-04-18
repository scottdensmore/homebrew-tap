class Rcptpixie < Formula
  desc "A command-line tool that automatically renames PDF receipts using AI-powered text extraction"
  homepage "https://github.com/scottdensmore/rcptpixie"
  url "https://github.com/scottdensmore/rcptpixie/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "bffa2472d39086c5fece692782624e58a1567c82260c8c100d7884432008b431"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/rcptpixie", "-version"
  end
end 