#
# Class: repos::jenkins
# Purpose: Define the Jenkins Stable repo for CentOS.
#
class repos::jenkins {
  yum::repo { "centos${::operatingsystemmajrelease}-${::architecture}-jenkins":
    descr    => "CentOS ${::operatingsystemmajrelease} ${::architecture} - Jenkins",
    baseurl  => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/repos/jenkins/",
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/static/jenkins-ci.org.key",
  }
}
