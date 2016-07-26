cask 'steelseries-engine' do
  version '3.8.2'
  sha256 'e578e1e4ebfe6e30214a5b24d1191351f0666b7499249b0117ac948401cab008'

  url "https://dysluvtcgugeg.cloudfront.net/drivers/engine/SteelSeriesEngine#{version}.pkg"
  name 'SteelSeries Engine 3'
  homepage 'https://steelseries.com/engine'
  license :gratis

  pkg "SteelSeriesEngine#{version}.pkg"

  uninstall pkgutil:   [
                         'com.steelseries.SSENext',
                         'com.steelseries.ssenext.driver',
                         'com.steelseries.ssenext.driver.signed',
                         'com.steelseries.ssenext.uninstaller',
                       ],
            launchctl: 'com.steelseries.SSENext',
            quit:      'com.steelseries.SteelSeries-Engine-3',
            delete:    [
                         '/Applications/SteelSeries Engine 3',
                         '/Library/LaunchAgents/com.steelseries.SSENext.plist',
                       ]
end
