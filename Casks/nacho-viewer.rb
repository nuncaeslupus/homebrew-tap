# Template for Casks/nacho-viewer.rb in nuncaeslupus/homebrew-tap (S-4 T8).
# channels.yml fills 0.1.4, fd6a02475d29ff70dd39e2c0d5a265b47f7d81e3687bc14dd439405b8a5f561b and Nacho.Viewer_0.1.4_universal.dmg (the Release asset's name) for each release.
cask "nacho-viewer" do
  version "0.1.4"
  sha256 "fd6a02475d29ff70dd39e2c0d5a265b47f7d81e3687bc14dd439405b8a5f561b"

  url "https://github.com/nuncaeslupus/nacho-viewer/releases/download/v#{version}/Nacho.Viewer_0.1.4_universal.dmg"
  name "Nacho Viewer"
  desc "Markdown viewer"
  homepage "https://github.com/nuncaeslupus/nacho-viewer"

  # The app updates itself in place.
  auto_updates true

  app "Nacho Viewer.app"

  zap trash: [
    "~/Library/Application Support/io.github.nuncaeslupus.NachoViewer",
    "~/Library/Application Support/nacho-viewer",
    "~/Library/Caches/io.github.nuncaeslupus.NachoViewer",
    "~/Library/WebKit/io.github.nuncaeslupus.NachoViewer",
  ]

  caveats <<~EOS
    Nacho Viewer is not notarized by Apple. If macOS refuses to open it, open
    System Settings > Privacy & Security and click "Open Anyway". macOS may ask
    again after an update.
  EOS
end
