cask "marvin" do
  arch arm: "-arm64", intel: ""
  version "1.63.0"

  sha256 arm:   "0e0bc18c1274f3f6a2d45dd45ddd6448f0a917d8de5cd68a3a69eaabd0595903",
         intel: "6fa673b815e3844844fc8ea5e4844997b7e96e54ffb3da0ebc16ad2bf20c2d24"

  url "https://#{arch == "" ? "amazingmarvin" : "amarm"}.s3.amazonaws.com/Marvin-#{version}#{arch}.dmg",
      verified: "amazingmarvin.s3.amazonaws.com/"
  name "Amazing Marvin"
  desc "Personal productivity app"
  homepage "https://www.amazingmarvin.com/"

  livecheck do
    url "http://amazingmarvin.s3-website-us-east-1.amazonaws.com/Marvin.dmg"
    strategy :header_match
  end

  app "Marvin.app"

  zap trash: [
    "~/Library/Application Support/Marvin",
    "~/Library/Logs/Marvin",
    "~/Library/Preferences/com.amazingmarvin.marvindesktop.plist",
  ]
end
