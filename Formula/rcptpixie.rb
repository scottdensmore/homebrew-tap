class Rcptpixie < Formula
  desc "A command-line tool that automatically renames PDF receipts using AI-powered text extraction"
  homepage "https://github.com/scottdensmore/rcptpixie"
  url "https://github.com/scottdensmore/rcptpixie/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "e1894347817eb5b308417771cb2f97d35a16c8ea00c008bb57fe18c3bd363f3d"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/rcptpixie", "-version"
  end
end 