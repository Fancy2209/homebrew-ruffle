class Ruffle < Formula
  desc "Flash Player emulator written in Rust"
  homepage "https://ruffle.rs"
  head "https://github.com/ruffle-rs/ruffle.git"
  license "MIT"

  depends_on "rust" => :build
  depends_on "openjdk" => :build

  def install
    system "cargo", "build", "--release", "--package=ruffle_desktop", "--features=sandbox,jpegxr,lzma"
    bin.install "target/release/ruffle_desktop" => "ruffle"
  end
end
