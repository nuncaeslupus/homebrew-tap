# Template for Casks/nacho-viewer.rb in nuncaeslupus/homebrew-tap (S-4 T8).
# channels.yml fills 0.1.0, 2c9b10020a737e23eb4064071508cad782d2ac8552e0d641a2a2a10c7fa0510e and Nacho.Viewer_0.1.0_universal.dmg (the Release asset's name) for each release.
cask "nacho-viewer" do
  version "0.1.0"
  sha256 "2c9b10020a737e23eb4064071508cad782d2ac8552e0d641a2a2a10c7fa0510e"

  url "https://github.com/nuncaeslupus/nacho-viewer/releases/download/v#{version}/Nacho.Viewer_0.1.0_universal.dmg"
  name "Nacho Viewer"
  desc "Markdown viewer"
  homepage "https://github.com/nuncaeslupus/nacho-viewer"

  # The app updates itself in place.
  auto_updates true

  app "Nacho Viewer.app"

  zap trash: [
    "~/Library/Application Support/io.github.nuncaeslupus.NachoViewer",
    "~/Library/Caches/io.github.nuncaeslupus.NachoViewer",
    "~/Library/WebKit/io.github.nuncaeslupus.NachoViewer",
  ]

  caveats <<~EOS
    Nacho Viewer is not notarized by Apple. If macOS refuses to open it, open
    System Settings > Privacy & Security and click "Open Anyway". macOS may ask
    again after an update.
  EOS
end
