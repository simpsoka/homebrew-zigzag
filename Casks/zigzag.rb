cask "zigzag" do
  version "0.1.5"
  sha256 "b0881668a8abeeba9780f58f3a7a7531c1b6e35df354e3a4c72dfc498e7c708b"

  url "https://github.com/simpsoka/zigzag/releases/download/v#{version}/ZigZag-#{version}.dmg"
  name "ZigZag"
  desc "Machine embroidery editor: SVG to stitches, by hand or by agent"
  homepage "https://github.com/simpsoka/zigzag"

  livecheck do
    url :url
    strategy :github_latest
  end

  # ZigZag updates itself (ZigZag > Check for Updates): brew leaves a
  # newer copy alone unless asked to upgrade it (--greedy).
  auto_updates true
  depends_on :macos

  app "ZigZag.app"

  zap trash: "~/Library/Application Support/ZigZag"
end
