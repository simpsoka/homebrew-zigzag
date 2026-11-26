cask "zigzag" do
  version "0.1.12"
  sha256 "00496135f12ace4d9e6c0ea8b5a619feb4b704d5fcaf73f4e2450eede2b791f8"

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
