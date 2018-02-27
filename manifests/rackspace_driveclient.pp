#
# Class: repos::rackspace_driveclient
# Purpose: Define the Rackspace Drive Client Stable repo for CentOS.
#
class repos::rackspace_driveclient (
  $pkghost = 'agentrepo.drivesrvr.com',
) {
  yum::repo { 'drivesrvr':
    descr    => "CentOS ${::operatingsystemmajrelease} ${::architecture} - Rackspace Drive Client",
    baseurl  => "http://${pkghost}/redhat/",
    gpgcheck => '1',
    gpgkey   => "http://${pkghost}/redhat/RPM-GPG-KEY-driveclient",
    enabled  => '1',
  }

  firewall { '300 - ALLOW http access for Rackspace Drive Client':
    chain       => 'OUTPUT',
    destination => $pkghost,
    dport       => 80,
    proto       => 'tcp',
    action      => 'accept',
  }
}
