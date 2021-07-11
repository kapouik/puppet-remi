# Class: remi::rpm_gpg_key
# ===========================
#
# Import the RPM GPG key for the Remi.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `ensure`
# Whether the RPM-GPG-KEY-remi file should exist.
#
# * `path`
# The path to the RPM-GPG-KEY-remi file to manage. Must be an absolute path.
#
class remi::rpm_gpg_key (
  $ensure = present,
){
  $source = $::facts['os']['release']['major'] ? {
    '7' => 'RPM-GPG-KEY-remi',
    '8' => 'RPM-GPG-KEY-remi.el8',
  }

  file { "/etc/pki/rpm-gpg/${source}":
    ensure => $ensure,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => "puppet:///modules/remi/${source}",
    before => Exec['import-remi'],
  }

  exec { 'import-remi':
    command => "rpm --import /etc/pki/rpm-gpg/${source}",
    path    => ['/bin', '/usr/bin'],
    unless  => "rpm -q gpg-pubkey-$(gpg --throw-keyids /etc/pki/rpm-gpg/${source} | grep pub | cut -c 12-19 | tr '[A-Z]' '[a-z]')",
  }

}
