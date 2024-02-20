class SwiftyDmg < Formula
  desc "Help you create DMG for your app"
  homepage "https://github.com/chocoford/SwiftyDMG"
  url "https://github.com/chocoford/SwiftyDMG/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "332fa269dd4c80bf8f1d2a1277b66b10cf0b17ce5736b04f1f45d54f5bab2caf"
  license "MIT"
  head "https://github.com/chocoford/SwiftyDMG.git"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/swifty-dmg"
    bin.install ".build/release/*.bundle"
  end

  test do
    system "#{bin}/swifty-dmg"
  end
end
