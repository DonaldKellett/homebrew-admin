class Ruboxer < Formula
  desc "Rudimentary container tool for Linux"
  homepage "https://github.com/DonaldKellett/ruboxer"
  url "https://github.com/DonaldKellett/ruboxer/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "11180ad198ac9a6c0460bf21582a113a47417d9a4fd4b41f98057c0506e9ce26"
  license "MIT"
  depends_on :linux
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/ruboxer"
    man8.install "ruboxer.8"
  end
end
