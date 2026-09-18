cask "swift-zip-manager" do
  version "1.0.0-Beta.9"
  sha256 "ee4f86c2db894c84799cc8280fcf9275b5840b5f181c277160cef798f77e4ad9"

  url "https://github.com/CaoHaoran-Dev/homebrew-apptap/releases/download/v2026.9.18/Swift-Zip-Manager.zip"
  name "Swift-Zip-Manager"
  desc "macOS archive file manager, built with Swift + SwiftUI."
  homepage "https://github.com/CaoHaoran-Dev/Swift-Zip-Manager"

  app "Swift-Zip-Manager.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/RunProcess.app"],
                   sudo: false
  end
end