class soapui {

##  package { 'SoapUI':
##    ensure   => 'installed',
##    provider => 'appdmg',
##    source   => 'http://nchc.dl.sourceforge.net/project/soapui/soapui/5.2.0/SoapUI-5.2.0.dmg'
##  }
$soap = 'SoapUI-5.2.0-mac-bin.zip'
$source = 'http://192.168.21.151/SoapUI-5.2.0-mac-bin.zip'

exec { 'install soapui':
  onlyif => "test -d /Applications/SoapUI-5.2.0"
  command => "cd /Applications/ && curl -O ${source} && open ${soap}",
}
}
