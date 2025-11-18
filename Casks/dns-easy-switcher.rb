cask "dns-easy-switcher" do
    version "1.0.7"
    sha256 "6ad602631aabcee94e7f5b42f51105f0a7ca2f822dd29a44b073d06353a87420"
  
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