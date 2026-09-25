cask "buildkite-notch" do
  version "0.3.0"
  sha256 "b468c2a969e6545ba20e13db1769314f953c924c376cd0287450205c15616ff5"

  url "https://github.com/nickolasdeluca/buildkite-notch/releases/download/v#{version}/BuildkiteNotch-#{version}.zip"
  name "Buildkite Notch"
  desc "Notch that tracks Buildkite builds and deploys"
  homepage "https://github.com/nickolasdeluca/buildkite-notch"

  depends_on macos: :sonoma

  app "BuildkiteNotch.app"

  uninstall quit: "com.nickolasdeluca.BuildkiteNotch"

  zap trash: "~/Library/Preferences/com.nickolasdeluca.BuildkiteNotch.plist"
end
