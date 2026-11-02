cask "runprocess" do
  version "3.5.0"
  sha256 "6d291e8781325267875668ebc02410286b663a591e2549f91b052efc0d4fc533"

  url "https://github.com/CaoHaoran-Dev/RunProcess/releases/download/v3.5.0/RunProcess-3.5.0.zip"
  name "RunProcess"
  desc "A Spotlight-style command launcher for macOS"
  homepage "https://github.com/CaoHaoran-Dev/RunProcess"

  app "RunProcess.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "/Applications/RunProcess.app"]
  end
end