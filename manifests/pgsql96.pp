##
## Class: repos::pgsql96
## Purpose: Define the pgsql96 repo for CentOS.
##
class repos::pgsql96 {
  yumrepo { "postgres-96-el${::operatingsystemmajrelease}-${::architecture}":
    descr    => "PostgreSQL 9.6 - EL${::operatingsystemmajrelease} ${::architecture}",
    baseurl  => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/repos/postgres/9.6/rhel-${::operatingsystemmajrelease}-${::architecture}",
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/static/rpm-gpg/RPM-GPG-KEY-PGDG-96",
  }

  yumrepo { "pgdg96":
    descr    => "PostgreSQL 9.6 $releasever - $basearch",
    baseurl  => "https://download.postgresql.org/pub/repos/yum/9.6/redhat/rhel-$releasever-$basearch",
    gpgcheck => '1',
    enabled  => '0',
    gpgkey   => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-PGDG-96",
  }
#[pgdg96]
#name=PostgreSQL 9.6 $releasever - $basearch
#baseurl=https://download.postgresql.org/pub/repos/yum/9.6/redhat/rhel-$releasever-$basearch
#enabled=1
#gpgcheck=1
#gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-PGDG-96
#
#[pgdg96-source]
#name=PostgreSQL 9.6 $releasever - $basearch - Source
#failovermethod=priority
#baseurl=https://download.postgresql.org/pub/repos/yum/srpms/9.6/redhat/rhel-$releasever-$basearch
#enabled=0
#gpgcheck=1
#gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-PGDG-96
#
#[pgdg96-updates-testing]
#name=PostgreSQL 9.6 $releasever - $basearch
#baseurl=https://download.postgresql.org/pub/repos/yum/testing/9.6/redhat/rhel-$releasever-$basearch
#enabled=0
#gpgcheck=1
#gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-PGDG-96
#
#[pgdg96-source-updates-testing]
#name=PostgreSQL 9.6 $releasever - $basearch - Source
#failovermethod=priority
#baseurl=https://download.postgresql.org/pub/repos/yum/srpms/testing/9.6/redhat/rhel-$releasever-$basearch
#enabled=0
#gpgcheck=1
#gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-PGDG-96
}
