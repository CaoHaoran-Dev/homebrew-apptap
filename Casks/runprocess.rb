cask "runprocess" do
  version "3.4.0"
  sha256 "e22fdb15e3fe52d1e3003ccd96155f20b61b48de71dae9f183378166953cb9b3"

  url "https://github.com/CaoHaoran-Dev/RunProcess/releases/download/v3.4.0/RunProcess-3.4.0.zip"
  name "RunProcess"
  desc "A Spotlight-style command launcher for macOS"
  homepage "https://github.com/CaoHaoran-Dev/RunProcess"

  app "RunProcess.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "/Applications/RunProcess.app"]
  end
end