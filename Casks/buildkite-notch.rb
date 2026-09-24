cask "buildkite-notch" do
  version "0.1.0"
  sha256 "e61582fc45ad360d047a08b471c9bc204d673caf3fe331d6e5ebd63224778f8f"

  url "https://github.com/nickolasdeluca/buildkite-notch/releases/download/v#{version}/BuildkiteNotch-#{version}.zip"
  name "Buildkite Notch"
  desc "Notch that tracks Buildkite builds and deploys"
  homepage "https://github.com/nickolasdeluca/buildkite-notch"

  depends_on macos: ">= :sonoma"

  app "BuildkiteNotch.app"

  uninstall quit: "com.nickolasdeluca.BuildkiteNotch"

  zap trash: "~/Library/Preferences/com.nickolasdeluca.BuildkiteNotch.plist"
end
