cask "runprocess" do
  version "3.0.0"
  sha256 "1a14151557db833370e1520fccf81d933fea1251025a35a25eb0b17b4bef16f1"

  url "https://github.com/CaoHaoran-Dev/homebrew-apptap/releases/download/v2026.9.18/RunProcess.zip"
  name "RunProcess"
  desc "A Spotlight-style command launcher for macOS"
  homepage "https://github.com/CaoHaoran-Dev/RunProcess"

  app "RunProcess.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/RunProcess.app"],
                   sudo: false
  end
end