class SwiftyDmg < Formula
  desc "Help you create DMG for your app"
  homepage "https://github.com/chocoford/SwiftyDMG"
  url "https://github.com/chocoford/SwiftyDMG/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "b3e56b7c1c5154a577c1fc012853734a1690d7b5de8613343973f2232df6d2a6"
  license "MIT"
  head "https://github.com/chocoford/SwiftyDMG.git"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/swifty-dmg"
  end

  test do
    system "#{bin}/swifty-dmg"
  end
end
