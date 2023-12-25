class SwiftyDmg < Formula
  desc "Help you create DMG for your app"
  homepage "https://github.com/chocoford/SwiftyDMG"
  url "https://github.com/chocoford/SwiftyDMG/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "147f83f806cfbf8e9d1654782b938aecd0d30e6d8f67e9ebf10bb9d1c504963c"
  license "MIT"
  head "https://github.com/chocoford/SwiftyDMG.git"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/swifty-dmg"
  end
end
