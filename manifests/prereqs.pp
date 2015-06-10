# Class: gitsource::prereqs
#
# install pre requisites for git compiling git from source
#

class gitsource::prereqs ()
{
  if $::osfamily == 'RedHat'{
    exec { 'yum install git prereqs':
      command => 'yum -y install gcc make zlib-devel openssl-devel cpio expat-devel gettext-devel curl-devel perl-ExtUtils-CBuilder perl-ExtUtils-MakeMaker',
      timeout => 0,
    }
  } elsif $::osfamily == 'Debian'{
    exec { 'apt-get install git prereqs':
      command => 'sudo apt-get install curl libcurl4-openssl-dev libexpat1-dev gettext libz-dev libssl-dev build-essential',
      timeout => 0,
    }
  } else {
    fail("The ${module_name} module is not supported on an ${::osfamily} distribution.")
  }
}
  