cask "marvin" do
  version "1.63.0"
  sha256 "8f6c4ca13956c41731086e2112fe79418e00248544e61d713b3ea9ff8d89c77a"

  url "https://amazingmarvin.s3.amazonaws.com/Marvin-#{version}.dmg",
      verified: "amazingmarvin.s3.amazonaws.com/"
  name "Amazing Marvin"
  desc "Personal productivity app"
  homepage "https://www.amazingmarvin.com/"

  livecheck do
    url "https://amazingmarvin.s3.amazonaws.com/latest-mac.yml"
    strategy :page_match
    regex(%r{Marvin-(\d+\.\d+\.\d+)\.dmg}i)
  end

  app "Marvin.app"

  zap trash: [
    "~/Library/Application Support/Marvin",
    "~/Library/Logs/Marvin",
    "~/Library/Preferences/com.amazingmarvin.marvindesktop.plist",
  ]
end
