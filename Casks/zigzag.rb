cask "zigzag" do
  version "0.1.2"
  sha256 "a28ab0d96ac6500f905009b1126041f3c572569fac7d8cb5f0661c48d31d2aa2"

  url "https://github.com/simpsoka/zigzag/releases/download/v#{version}/ZigZag-#{version}.dmg"
  name "ZigZag"
  desc "Machine embroidery editor: SVG to stitches, by hand or by agent"
  homepage "https://github.com/simpsoka/zigzag"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "ZigZag.app"

  zap trash: "~/Library/Application Support/ZigZag"
end
