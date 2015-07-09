# Public: Install SoapUI.app into /Applications.
#
# Examples
#
#   include soapui
class soapui {

  package { 'SoapUI':
    ensure   => 'installed',
    provider => 'appdmg',
    source   => 'http://nchc.dl.sourceforge.net/project/soapui/soapui/5.2.0/SoapUI-5.2.0.dmg'
  }
}
