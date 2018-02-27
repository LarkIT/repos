#
# Class: repos::jenkins
# Purpose: Define the Jenkins Stable repo for CentOS.
#
class repos::jenkins {
  yum::repo { "centos${::operatingsystemmajrelease}-${::architecture}-jenkins":
    descr    => "CentOS ${::operatingsystemmajrelease} ${::architecture} - Jenkins",
    baseurl  => 'https://pulp.lark-it.com/pulp/repos/jenkins/',
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => 'https://pulp.lark-it.com/pulp/static/jenkins-ci.org.key',
  }
}
