cask "zigzag" do
  version "0.1.9"
  sha256 "4f6d470b785738403d7d94a507c4aeb05d69964b52f685c2c1ff9c3b6fa6b3bb"

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
