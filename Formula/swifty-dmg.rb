class SwiftyDmg < Formula
  desc "Help you create DMG for your app"
  homepage "https://github.com/chocoford/SwiftyDMG"
  url "https://github.com/chocoford/SwiftyDMG/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "9e36450b84480810428780f42403298e1405909b737e63e4d398691184e8fad5"
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
