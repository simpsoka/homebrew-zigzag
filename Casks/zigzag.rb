cask "zigzag" do
  version "0.1.11"
  sha256 "90be78075af7b920157bb8a6c27b90a5a91a379ea43b19b9fc01fbe69f27e7c9"

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
