#
# Class: repos::rackspace_cloudmonitoring
# Purpose: Define the Rackspace Cloud Monitoring Stable repo for CentOS.
#
class repos::rackspace_cloudmonitoring (
  $pkghost = 'stable.packages.cloudmonitoring.rackspace.com',
) {
  yum::repo { "centos${::operatingsystemmajrelease}-${::architecture}-rackspace_cloudmonitoring":
    descr   => "CentOS ${::operatingsystemmajrelease} ${::architecture} - Rackspace Cloud Monitoring",
    baseurl => "http://${pkghost}/centos-${::operatingsystemmajrelease}-${::architecture}/",
    enabled => '1',
  }

  firewall { '300 - ALLOW http access for Rackspace Cloud Monitoring':
    chain       => 'OUTPUT',
    destination => $pkghost,
    dport       => 80,
    proto       => 'tcp',
    action      => 'accept',
  }
}
