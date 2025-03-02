cask "dns-easy-switcher" do
    version "1.0.4"
    sha256 "db7aca8827fa3af850764689a727bfb46af5918fd3c77a420e5cd9f041064c0e"
  
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