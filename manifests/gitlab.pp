#
# Class: repos::gitlab
# Purpose: Define the repo for Gitlab
#
# WARNING: This repo points to the *public* repo
#
class repos::gitlab {
  yumrepo { 'gitlab':
    descr    => 'Official repository for Gitlab',
    baseurl  => 'https://packages.gitlab.com/gitlab/gitlab-ce/el/$releasever/$basearch/',
    gpgcheck => '0',
    enabled  => '1',
    gpgkey   => 'https://packages.gitlab.com/gpg.key',
  }
}
