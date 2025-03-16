cask "dns-easy-switcher" do
    version "1.0.6"
    sha256 "284f6a8853d0d8ed11d827096e456f4bcd2bb40fbb1e3c9acaadc3739411406c"
  
    url "https://github.com/glinford/dns-easy-switcher/releases/download/v#{version}/DNS.Easy.Switcher.dmg"
    name "DNS Easy Switcher"
    desc "Menu bar app to easily switch between DNS providers"
    homepage "https://github.com/glinford/dns-easy-switcher"
  
    depends_on macos: ">= :mojave"
  
    app "DNS Easy Switcher.app"
  
    zap trash: [
      "~/Library/Application Support/DNS Easy Switcher",
      "~/Library/Preferences/com.glinford.DNS-Easy-Switcher.plist",
      "~/Library/Caches/com.glinford.DNS-Easy-Switcher"
    ]
  end