cask "runprocess" do
  version "3.2.1"
  sha256 "50632aa23cbc9dbfeb95e30a35ced9888c8cda239486ecb7aecafa9b7a18ad18"

  url "https://github.com/CaoHaoran-Dev/RunProcess/releases/download/v3.2.1/RunProcess.zip"
  name "RunProcess"
  desc "A Spotlight-style command launcher for macOS"
  homepage "https://github.com/CaoHaoran-Dev/RunProcess"

  app "RunProcess.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "/Applications/RunProcess.app"]
  end
end