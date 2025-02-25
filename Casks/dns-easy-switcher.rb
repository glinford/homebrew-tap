cask "dns-easy-switcher" do
    version "1.0.3"
    sha256 "3ca0a5c9db46b353615c7b1158300071074c5b9c6d7919736fc3734626b2d5d2"
  
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