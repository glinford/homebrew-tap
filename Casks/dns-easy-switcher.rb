cask "dns-easy-switcher" do
    version "1.0.5"
    sha256 "7270644f3ffad72dfafb80fc6210698f3c241198fa797389a61ad16b932f1d3f"
  
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