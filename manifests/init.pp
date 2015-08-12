class soapui {

$soap = 'SoapUI-5.2.0-mac-bin.zip'
$source = 'http://cdn01.downloads.smartbear.com/soapui/5.2.0/SoapUI-5.2.0-mac-bin.zip?_ga=1.230889759.1857027870.1439349046'

exec { 'install soapui':
  unless => "test -d /Applications/SoapUI-5.2.0",
  command => "cd /Applications/ && curl -O ${source} && open ${soap}",
}
}
