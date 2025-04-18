class Rcptpixie < Formula
  desc "A command-line tool that automatically renames PDF receipts using AI-powered text extraction"
  homepage "https://github.com/scottdensmore/rcptpixie"
  url "https://github.com/scottdensmore/rcptpixie/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "eec8415b8528c4570df5b471d68f852e66f3e3742ed9f705ffeb95a06a723026"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/rcptpixie", "-version"
  end
end 