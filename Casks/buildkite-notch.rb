cask "buildkite-notch" do
  version "0.2.0"
  sha256 "b878ea5eb70da28a8406ce155525d51b011d7799177e1644ce892f77f2bdb653"

  url "https://github.com/nickolasdeluca/buildkite-notch/releases/download/v#{version}/BuildkiteNotch-#{version}.zip"
  name "Buildkite Notch"
  desc "Notch that tracks Buildkite builds and deploys"
  homepage "https://github.com/nickolasdeluca/buildkite-notch"

  depends_on macos: :sonoma

  app "BuildkiteNotch.app"

  uninstall quit: "com.nickolasdeluca.BuildkiteNotch"

  zap trash: "~/Library/Preferences/com.nickolasdeluca.BuildkiteNotch.plist"
end
