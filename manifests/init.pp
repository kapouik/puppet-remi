# Class: remi
# ===========================
#
# Configure the remi repository and import the GPG keys.
#
# Parameters
# ----------
#
# * `ensure`
# Whether Remi's repositories and the RPM-GPG-KEY-remi file should exist.
#
# Examples
# --------
#
# @example
#    class { 'remi':
#      remi_safe_enabled  => 1,
#      remi_php71_enabled => 1,
#    }
#
class remi (
  String[1] $ensure                                = present,
  Boolean $use_epel                                = true,
  String[1] $proxy                                 = absent,
  String[1] $proxy_password                        = absent,
  String[1] $proxy_username                        = absent,

  String[1] $remi_baseurl                          = absent,
  String[1] $remi_mirrorlist                       = "http://cdn.remirepo.net/enterprise/${::facts['os']['release']['major']}/remi/mirror",
  Integer $remi_enabled                          = 0,
  Optional[String] $remi_includepkgs                      = undef,
  Optional[String] $remi_exclude                          = undef,

  String[1] $remi_safe_baseurl                     = absent,
  String[1] $remi_safe_mirrorlist                  = "http://cdn.remirepo.net/enterprise/${::facts['os']['release']['major']}/safe/mirror",
  Integer $remi_safe_enabled                     = 0,
  Optional[String] $remi_safe_includepkgs                 = undef,
  Optional[String] $remi_safe_exclude                     = undef,

  String[1] $remi_modular_baseurl                  = absent,
  String[1] $remi_modular_mirrorlist               = "http://cdn.remirepo.net/enterprise/${::facts['os']['release']['major']}/modular-test/mirror",
  Integer $remi_modular_enabled                  = 0,
  Optional[String] $remi_modular_includepkgs              = undef,
  Optional[String] $remi_modular_exclude                  = undef,

  String[1] $remi_modular_test_baseurl             = absent,
  String[1] $remi_modular_test_mirrorlist          = "http://cdn.remirepo.net/enterprise/${::facts['os']['release']['major']}/safe/mirror",
  Integer $remi_modular_test_enabled             = 0,
  Optional[String] $remi_modular_test_includepkgs         = undef,
  Optional[String] $remi_modular_test_exclude             = undef,

  String[1] $remi_php54_baseurl                    = absent,
  String[1] $remi_php54_mirrorlist                 = "http://cdn.remirepo.net/enterprise/${::facts['os']['release']['major']}/php54/mirror",
  Integer $remi_php54_enabled                    = 0,
  Optional[String] $remi_php54_includepkgs                = undef,
  Optional[String] $remi_php54_exclude                    = undef,

  String[1] $remi_php55_baseurl                    = absent,
  String[1] $remi_php55_mirrorlist                 = "http://cdn.remirepo.net/enterprise/${::facts['os']['release']['major']}/php55/mirror",
  Integer $remi_php55_enabled                    = 0,
  Optional[String] $remi_php55_includepkgs                = undef,
  Optional[String] $remi_php55_exclude                    = undef,

  String[1] $remi_php56_baseurl                    = absent,
  String[1] $remi_php56_mirrorlist                 = "http://cdn.remirepo.net/enterprise/${::facts['os']['release']['major']}/php56/mirror",
  Integer $remi_php56_enabled                    = 0,
  Optional[String] $remi_php56_includepkgs                = undef,
  Optional[String] $remi_php56_exclude                    = undef,

  String[1] $remi_test_baseurl                     = absent,
  String[1] $remi_test_mirrorlist                  = "http://cdn.remirepo.net/enterprise/${::facts['os']['release']['major']}/test/mirror",
  Integer $remi_test_enabled                     = 0,
  Optional[String] $remi_test_includepkgs                 = undef,
  Optional[String] $remi_test_exclude                     = undef,

  String[1] $remi_debuginfo_baseurl                = "http://rpms.remirepo.net/enterprise/${::facts['os']['release']['major']}/debug-remi/\$basearch/",
  String[1] $remi_debuginfo_mirrorlist             = absent,
  Integer $remi_debuginfo_enabled                = 0,
  Optional[String] $remi_debuginfo_includepkgs            = undef,
  Optional[String] $remi_debuginfo_exclude                = undef,

  String[1] $remi_php55_debuginfo_baseurl          = "http://rpms.remirepo.net/enterprise/${::facts['os']['release']['major']}/debug-php55/\$basearch/",
  String[1] $remi_php55_debuginfo_mirrorlist       = absent,
  Integer $remi_php55_debuginfo_enabled          = 0,
  Optional[String] $remi_php55_debuginfo_includepkgs      = undef,
  Optional[String] $remi_php55_debuginfo_exclude          = undef,

  String[1] $remi_php56_debuginfo_baseurl          = "http://rpms.remirepo.net/enterprise/${::facts['os']['release']['major']}/debug-php56/\$basearch/",
  String[1] $remi_php56_debuginfo_mirrorlist       = absent,
  Integer $remi_php56_debuginfo_enabled          = 0,
  Optional[String] $remi_php56_debuginfo_includepkgs      = undef,
  Optional[String] $remi_php56_debuginfo_exclude          = undef,

  String[1] $remi_test_debuginfo_baseurl           = "http://rpms.remirepo.net/enterprise/${::facts['os']['release']['major']}/debug-test/\$basearch/",
  String[1] $remi_test_debuginfo_mirrorlist        = absent,
  Integer $remi_test_debuginfo_enabled           = 0,
  Optional[String] $remi_test_debuginfo_includepkgs       = undef,
  Optional[String] $remi_test_debuginfo_exclude           = undef,

  String[1] $remi_php70_baseurl                    = absent,
  String[1] $remi_php70_mirrorlist                 = "http://cdn.remirepo.net/enterprise/${::facts['os']['release']['major']}/php70/mirror",
  Integer $remi_php70_enabled                    = 0,
  Optional[String] $remi_php70_includepkgs                = undef,
  Optional[String] $remi_php70_exclude                    = undef,

  String[1] $remi_php70_debuginfo_baseurl          = "http://rpms.remirepo.net/enterprise/${::facts['os']['release']['major']}/debug-php70/\$basearch/",
  String[1] $remi_php70_debuginfo_mirrorlist       = absent,
  Integer $remi_php70_debuginfo_enabled          = 0,
  Optional[String] $remi_php70_debuginfo_includepkgs      = undef,
  Optional[String] $remi_php70_debuginfo_exclude          = undef,

  String[1] $remi_php70_test_baseurl               = absent,
  String[1] $remi_php70_test_mirrorlist            = "http://cdn.remirepo.net/enterprise/${::facts['os']['release']['major']}/test70/mirror",
  Integer $remi_php70_test_enabled               = 0,
  Optional[String] $remi_php70_test_includepkgs           = undef,
  Optional[String] $remi_php70_test_exclude               = undef,

  String[1] $remi_php70_test_debuginfo_baseurl     = "http://rpms.remirepo.net/enterprise/${::facts['os']['release']['major']}/debug-test70/\$basearch/",
  String[1] $remi_php70_test_debuginfo_mirrorlist  = absent,
  Integer $remi_php70_test_debuginfo_enabled     = 0,
  Optional[String] $remi_php70_test_debuginfo_includepkgs = undef,
  Optional[String] $remi_php70_test_debuginfo_exclude     = undef,

  String[1] $remi_php71_baseurl                    = absent,
  String[1] $remi_php71_mirrorlist                 = "http://cdn.remirepo.net/enterprise/${::facts['os']['release']['major']}/php71/mirror",
  Integer $remi_php71_enabled                    = 0,
  Optional[String] $remi_php71_includepkgs                = undef,
  Optional[String] $remi_php71_exclude                    = undef,

  String[1] $remi_php71_debuginfo_baseurl          = "http://rpms.remirepo.net/enterprise/${::facts['os']['release']['major']}/debug-php71/\$basearch/",
  String[1] $remi_php71_debuginfo_mirrorlist       = absent,
  Integer $remi_php71_debuginfo_enabled          = 0,
  Optional[String] $remi_php71_debuginfo_includepkgs      = undef,
  Optional[String] $remi_php71_debuginfo_exclude          = undef,

  String[1] $remi_php71_test_baseurl               = absent,
  String[1] $remi_php71_test_mirrorlist            = "http://cdn.remirepo.net/enterprise/${::facts['os']['release']['major']}/test71/mirror",
  Integer $remi_php71_test_enabled               = 0,
  Optional[String] $remi_php71_test_includepkgs           = undef,
  Optional[String] $remi_php71_test_exclude               = undef,

  String[1] $remi_php71_test_debuginfo_baseurl     = "http://rpms.remirepo.net/enterprise/${::facts['os']['release']['major']}/debug-test71/\$basearch/",
  String[1] $remi_php71_test_debuginfo_mirrorlist  = absent,
  Integer $remi_php71_test_debuginfo_enabled     = 0,
  Optional[String] $remi_php71_test_debuginfo_includepkgs = undef,
  Optional[String] $remi_php71_test_debuginfo_exclude     = undef,

  String[1] $remi_php72_baseurl                    = absent,
  String[1] $remi_php72_mirrorlist                 = "http://cdn.remirepo.net/enterprise/${::facts['os']['release']['major']}/php72/mirror",
  Integer $remi_php72_enabled                    = 0,
  Optional[String] $remi_php72_includepkgs                = undef,
  Optional[String] $remi_php72_exclude                    = undef,

  String[1] $remi_php72_debuginfo_baseurl          = "http://rpms.remirepo.net/enterprise/${::facts['os']['release']['major']}/debug-php72/\$basearch/",
  String[1] $remi_php72_debuginfo_mirrorlist       = absent,
  Integer $remi_php72_debuginfo_enabled          = 0,
  Optional[String] $remi_php72_debuginfo_includepkgs      = undef,
  Optional[String] $remi_php72_debuginfo_exclude          = undef,

  String[1] $remi_php72_test_baseurl               = absent,
  String[1] $remi_php72_test_mirrorlist            = "http://cdn.remirepo.net/enterprise/${::facts['os']['release']['major']}/test72/mirror",
  Integer $remi_php72_test_enabled               = 0,
  Optional[String] $remi_php72_test_includepkgs           = undef,
  Optional[String] $remi_php72_test_exclude               = undef,

  String[1] $remi_php72_test_debuginfo_baseurl     = "http://rpms.remirepo.net/enterprise/${::facts['os']['release']['major']}/debug-test72/\$basearch/",
  String[1] $remi_php72_test_debuginfo_mirrorlist  = absent,
  Integer $remi_php72_test_debuginfo_enabled     = 0,
  Optional[String] $remi_php72_test_debuginfo_includepkgs = undef,
  Optional[String] $remi_php72_test_debuginfo_exclude     = undef,

  String[1] $remi_php73_baseurl                    = absent,
  String[1] $remi_php73_mirrorlist                 = "http://cdn.remirepo.net/enterprise/${::facts['os']['release']['major']}/php73/mirror",
  Integer $remi_php73_enabled                    = 0,
  Optional[String] $remi_php73_includepkgs                = undef,
  Optional[String] $remi_php73_exclude                    = undef,

  String[1] $remi_php73_debuginfo_baseurl          = "http://rpms.remirepo.net/enterprise/${::facts['os']['release']['major']}/debug-php73/\$basearch/",
  String[1] $remi_php73_debuginfo_mirrorlist       = absent,
  Integer $remi_php73_debuginfo_enabled          = 0,
  Optional[String] $remi_php73_debuginfo_includepkgs      = undef,
  Optional[String] $remi_php73_debuginfo_exclude          = undef,

  String[1] $remi_php73_test_baseurl               = absent,
  String[1] $remi_php73_test_mirrorlist            = "http://cdn.remirepo.net/enterprise/${::facts['os']['release']['major']}/test73/mirror",
  Integer $remi_php73_test_enabled               = 0,
  Optional[String] $remi_php73_test_includepkgs           = undef,
  Optional[String] $remi_php73_test_exclude               = undef,

  String[1] $remi_php73_test_debuginfo_baseurl     = "http://rpms.remirepo.net/enterprise/${::facts['os']['release']['major']}/debug-test73/\$basearch/",
  String[1] $remi_php73_test_debuginfo_mirrorlist  = absent,
  Integer $remi_php73_test_debuginfo_enabled     = 0,
  Optional[String] $remi_php73_test_debuginfo_includepkgs = undef,
  Optional[String] $remi_php73_test_debuginfo_exclude     = undef,

  String[1] $remi_php74_baseurl                    = absent,
  String[1] $remi_php74_mirrorlist                 = "http://cdn.remirepo.net/enterprise/${::facts['os']['release']['major']}/php74/mirror",
  Integer $remi_php74_enabled                    = 0,
  Optional[String] $remi_php74_includepkgs                = undef,
  Optional[String] $remi_php74_exclude                    = undef,

  String[1] $remi_php74_debuginfo_baseurl          = "http://rpms.remirepo.net/enterprise/${::facts['os']['release']['major']}/debug-php74/\$basearch/",
  String[1] $remi_php74_debuginfo_mirrorlist       = absent,
  Integer $remi_php74_debuginfo_enabled          = 0,
  Optional[String] $remi_php74_debuginfo_includepkgs      = undef,
  Optional[String] $remi_php74_debuginfo_exclude          = undef,

  String[1] $remi_php74_test_baseurl               = absent,
  String[1] $remi_php74_test_mirrorlist            = "http://cdn.remirepo.net/enterprise/${::facts['os']['release']['major']}/test74/mirror",
  Integer $remi_php74_test_enabled               = 0,
  Optional[String] $remi_php74_test_includepkgs           = undef,
  Optional[String] $remi_php74_test_exclude               = undef,

  String[1] $remi_php74_test_debuginfo_baseurl     = "http://rpms.remirepo.net/enterprise/${::facts['os']['release']['major']}/debug-test74/\$basearch/",
  String[1] $remi_php74_test_debuginfo_mirrorlist  = absent,
  Integer $remi_php74_test_debuginfo_enabled     = 0,
  Optional[String] $remi_php74_test_debuginfo_includepkgs = undef,
  Optional[String] $remi_php74_test_debuginfo_exclude     = undef,

  String[1] $remi_php80_baseurl                    = absent,
  String[1] $remi_php80_mirrorlist                 = "http://cdn.remirepo.net/enterprise/${::facts['os']['release']['major']}/php80/mirror",
  Integer $remi_php80_enabled                    = 0,
  Optional[String] $remi_php80_includepkgs                = undef,
  Optional[String] $remi_php80_exclude                    = undef,

  String[1] $remi_php80_debuginfo_baseurl          = "http://rpms.remirepo.net/enterprise/${::facts['os']['release']['major']}/debug-php80/\$basearch/",
  String[1] $remi_php80_debuginfo_mirrorlist       = absent,
  Integer $remi_php80_debuginfo_enabled          = 0,
  Optional[String] $remi_php80_debuginfo_includepkgs      = undef,
  Optional[String] $remi_php80_debuginfo_exclude          = undef,

  String[1] $remi_php80_test_baseurl               = absent,
  String[1] $remi_php80_test_mirrorlist            = "http://cdn.remirepo.net/enterprise/${::facts['os']['release']['major']}/test80/mirror",
  Integer $remi_php80_test_enabled               = 0,
  Optional[String] $remi_php80_test_includepkgs           = undef,
  Optional[String] $remi_php80_test_exclude               = undef,

  String[1] $remi_php80_test_debuginfo_baseurl     = "http://rpms.remirepo.net/enterprise/${::facts['os']['release']['major']}/debug-test80/\$basearch/",
  String[1] $remi_php80_test_debuginfo_mirrorlist  = absent,
  Integer $remi_php80_test_debuginfo_enabled     = 0,
  Optional[String] $remi_php80_test_debuginfo_includepkgs = undef,
  Optional[String] $remi_php80_test_debuginfo_exclude     = undef,

  String[1] $remi_php81_baseurl                    = absent,
  String[1] $remi_php81_mirrorlist                 = "http://cdn.remirepo.net/enterprise/${::facts['os']['release']['major']}/php81/mirror",
  Integer $remi_php81_enabled                    = 0,
  Optional[String] $remi_php81_includepkgs                = undef,
  Optional[String] $remi_php81_exclude                    = undef,

  String[1] $remi_php81_debuginfo_baseurl          = "http://rpms.remirepo.net/enterprise/${::facts['os']['release']['major']}/debug-php81/\$basearch/",
  String[1] $remi_php81_debuginfo_mirrorlist       = absent,
  Integer $remi_php81_debuginfo_enabled          = 0,
  Optional[String] $remi_php81_debuginfo_includepkgs      = undef,
  Optional[String] $remi_php81_debuginfo_exclude          = undef,

  String[1] $remi_php81_test_baseurl               = absent,
  String[1] $remi_php81_test_mirrorlist            = "http://cdn.remirepo.net/enterprise/${::facts['os']['release']['major']}/test81/mirror",
  Integer $remi_php81_test_enabled               = 0,
  Optional[String] $remi_php81_test_includepkgs           = undef,
  Optional[String] $remi_php81_test_exclude               = undef,

  String[1] $remi_php81_test_debuginfo_baseurl     = "http://rpms.remirepo.net/enterprise/${::facts['os']['release']['major']}/debug-test81/\$basearch/",
  String[1] $remi_php81_test_debuginfo_mirrorlist  = absent,
  Integer $remi_php81_test_debuginfo_enabled     = 0,
  Optional[String] $remi_php81_test_debuginfo_includepkgs = undef,
  Optional[String] $remi_php81_test_debuginfo_exclude     = undef,

  String[1] $remi_php82_baseurl                    = absent,
  String[1] $remi_php82_mirrorlist                 = "http://cdn.remirepo.net/enterprise/${::facts['os']['release']['major']}/php82/mirror",
  Integer $remi_php82_enabled                    = 0,
  Optional[String] $remi_php82_includepkgs                = undef,
  Optional[String] $remi_php82_exclude                    = undef,

  String[1] $remi_php82_debuginfo_baseurl          = "http://rpms.remirepo.net/enterprise/${::facts['os']['release']['major']}/debug-php82/\$basearch/",
  String[1] $remi_php82_debuginfo_mirrorlist       = absent,
  Integer $remi_php82_debuginfo_enabled          = 0,
  Optional[String] $remi_php82_debuginfo_includepkgs      = undef,
  Optional[String] $remi_php82_debuginfo_exclude          = undef,

  String[1] $remi_php82_test_baseurl               = absent,
  String[1] $remi_php82_test_mirrorlist            = "http://cdn.remirepo.net/enterprise/${::facts['os']['release']['major']}/test82/mirror",
  Integer $remi_php82_test_enabled               = 0,
  Optional[String] $remi_php82_test_includepkgs           = undef,
  Optional[String] $remi_php82_test_exclude               = undef,

  String[1] $remi_php82_test_debuginfo_baseurl     = "http://rpms.remirepo.net/enterprise/${::facts['os']['release']['major']}/debug-test82/\$basearch/",
  String[1] $remi_php82_test_debuginfo_mirrorlist  = absent,
  Integer $remi_php82_test_debuginfo_enabled     = 0,
  Optional[String] $remi_php82_test_debuginfo_includepkgs = undef,
  Optional[String] $remi_php82_test_debuginfo_exclude     = undef,
) {
  if $use_epel {
    require epel
  }

  $osreleasemaj = $::facts['os']['release']['major']

  if ($::facts['os']['family'] == 'RedHat' and $::facts['os']['name'] !~ /Fedora|Amazon/) {
    class { 'remi::rpm_gpg_key':
      ensure => $ensure,
    }

    $gpgkey = $osreleasemaj ? {
      '7' => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
      '8' => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi.el8',
    }

    yumrepo {
      default:
        gpgcheck       => 1,
        gpgkey         => $gpgkey,
        require        => Class['remi::rpm_gpg_key'],
        proxy          => $proxy,
        proxy_password => $proxy_password,
        proxy_username => $proxy_username;

      'remi':
        descr       => "Remi's RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch",
        baseurl     => $remi_baseurl,
        mirrorlist  => $remi_mirrorlist,
        enabled     => $remi_enabled,
        includepkgs => $remi_includepkgs,
        exclude     => $remi_exclude;

      'remi-test':
        descr       => "Remi's test RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch",
        baseurl     => $remi_test_baseurl,
        mirrorlist  => $remi_test_mirrorlist,
        enabled     => $remi_test_enabled,
        includepkgs => $remi_test_includepkgs,
        exclude     => $remi_test_exclude;

      'remi-debuginfo':
        descr       => "Remi's RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch - debuginfo",
        baseurl     => $remi_debuginfo_baseurl,
        mirrorlist  => $remi_debuginfo_mirrorlist,
        enabled     => $remi_debuginfo_enabled,
        includepkgs => $remi_debuginfo_includepkgs,
        exclude     => $remi_debuginfo_exclude;

      'remi-test-debuginfo':
        descr       => "Remi's test RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch - debuginfo",
        baseurl     => $remi_test_debuginfo_baseurl,
        mirrorlist  => $remi_test_debuginfo_mirrorlist,
        enabled     => $remi_test_debuginfo_enabled,
        includepkgs => $remi_test_debuginfo_includepkgs,
        exclude     => $remi_test_debuginfo_exclude;

      'remi-safe':
        descr       => "Safe Remi's test RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch",
        baseurl     => $remi_safe_baseurl,
        mirrorlist  => $remi_safe_mirrorlist,
        enabled     => $remi_safe_enabled,
        includepkgs => $remi_safe_includepkgs,
        exclude     => $remi_safe_exclude;
    }

    if $osreleasemaj == '8' {
      yumrepo {
        default:
          gpgcheck       => 1,
          gpgkey         => $gpgkey,
          require        => Class['remi::rpm_gpg_key'],
          proxy          => $proxy,
          proxy_password => $proxy_password,
          proxy_username => $proxy_username;

        'remi-modular':
          descr       => "Remi's modular RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch",
          baseurl     => $remi_modular_baseurl,
          mirrorlist  => $remi_modular_mirrorlist,
          enabled     => $remi_modular_enabled,
          includepkgs => $remi_modular_includepkgs,
          exclude     => $remi_modular_exclude;

        'remi-modular-test':
          descr       => "Remi's modular test RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch",
          baseurl     => $remi_modular_test_baseurl,
          mirrorlist  => $remi_modular_test_mirrorlist,
          enabled     => $remi_modular_test_enabled,
          includepkgs => $remi_modular_test_includepkgs,
          exclude     => $remi_modular_test_exclude;
      }
    }

    if $osreleasemaj == '7' {
      yumrepo {
        default:
          gpgcheck       => 1,
          gpgkey         => $gpgkey,
          require        => Class['remi::rpm_gpg_key'],
          proxy          => $proxy,
          proxy_password => $proxy_password,
          proxy_username => $proxy_username;

        'remi-php54':
          descr       => "Remi's PHP 5.4 RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch",
          baseurl     => $remi_php54_baseurl,
          mirrorlist  => $remi_php54_mirrorlist,
          enabled     => $remi_php54_enabled,
          includepkgs => $remi_php54_includepkgs,
          exclude     => $remi_php54_exclude;

        'remi-php55':
          descr       => "Remi's PHP 5.5 RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch",
          baseurl     => $remi_php55_baseurl,
          mirrorlist  => $remi_php55_mirrorlist,
          enabled     => $remi_php55_enabled,
          includepkgs => $remi_php55_includepkgs,
          exclude     => $remi_php55_exclude;

        'remi-php55-debuginfo':
          descr       => "Remi's PHP 5.5 RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch - debuginfo",
          baseurl     => $remi_php55_debuginfo_baseurl,
          mirrorlist  => $remi_php55_debuginfo_mirrorlist,
          enabled     => $remi_php55_debuginfo_enabled,
          includepkgs => $remi_php55_debuginfo_includepkgs,
          exclude     => $remi_php55_debuginfo_exclude;

        'remi-php56':
          descr       => "Remi's PHP 5.6 RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch",
          baseurl     => $remi_php56_baseurl,
          mirrorlist  => $remi_php56_mirrorlist,
          enabled     => $remi_php56_enabled,
          includepkgs => $remi_php56_includepkgs,
          exclude     => $remi_php56_exclude;

        'remi-php56-debuginfo':
          descr       => "Remi's PHP 5.6 RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch - debuginfo",
          baseurl     => $remi_php56_debuginfo_baseurl,
          mirrorlist  => $remi_php56_debuginfo_mirrorlist,
          enabled     => $remi_php56_debuginfo_enabled,
          includepkgs => $remi_php56_debuginfo_includepkgs,
          exclude     => $remi_php56_debuginfo_exclude;

        'remi-php70':
          descr       => "Remi's PHP 7.0 RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch",
          baseurl     => $remi_php70_baseurl,
          mirrorlist  => $remi_php70_mirrorlist,
          enabled     => $remi_php70_enabled,
          includepkgs => $remi_php70_includepkgs,
          exclude     => $remi_php70_exclude;

        'remi-php70-debuginfo':
          descr       => "Remi's PHP 7.0 RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch - debuginfo",
          baseurl     => $remi_php70_debuginfo_baseurl,
          mirrorlist  => $remi_php70_debuginfo_mirrorlist,
          enabled     => $remi_php70_debuginfo_enabled,
          includepkgs => $remi_php70_debuginfo_includepkgs,
          exclude     => $remi_php70_debuginfo_exclude;

        'remi-php70-test':
          descr       => "Remi's PHP 7.0 test RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch",
          baseurl     => $remi_php70_test_baseurl,
          mirrorlist  => $remi_php70_test_mirrorlist,
          enabled     => $remi_php70_test_enabled,
          includepkgs => $remi_php70_test_includepkgs,
          exclude     => $remi_php70_test_exclude;

        'remi-php70-test-debuginfo':
          descr       => "Remi's PHP 7.0 test RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch - debuginfo",
          baseurl     => $remi_php70_test_debuginfo_baseurl,
          mirrorlist  => $remi_php70_test_debuginfo_mirrorlist,
          enabled     => $remi_php70_test_debuginfo_enabled,
          includepkgs => $remi_php70_test_debuginfo_includepkgs,
          exclude     => $remi_php70_test_debuginfo_exclude;

        'remi-php71':
          descr       => "Remi's PHP 7.1 RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch",
          baseurl     => $remi_php71_baseurl,
          mirrorlist  => $remi_php71_mirrorlist,
          enabled     => $remi_php71_enabled,
          includepkgs => $remi_php71_includepkgs,
          exclude     => $remi_php71_exclude;

        'remi-php71-debuginfo':
          descr       => "Remi's PHP 7.1 RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch - debuginfo",
          baseurl     => $remi_php71_debuginfo_baseurl,
          mirrorlist  => $remi_php71_debuginfo_mirrorlist,
          enabled     => $remi_php71_debuginfo_enabled,
          includepkgs => $remi_php71_debuginfo_includepkgs,
          exclude     => $remi_php71_debuginfo_exclude;

        'remi-php71-test':
          descr       => "Remi's PHP 7.1 test RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch",
          baseurl     => $remi_php71_test_baseurl,
          mirrorlist  => $remi_php71_test_mirrorlist,
          enabled     => $remi_php71_test_enabled,
          includepkgs => $remi_php71_test_includepkgs,
          exclude     => $remi_php71_test_exclude;

        'remi-php71-test-debuginfo':
          descr       => "Remi's PHP 7.1 test RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch - debuginfo",
          baseurl     => $remi_php71_test_debuginfo_baseurl,
          mirrorlist  => $remi_php71_test_debuginfo_mirrorlist,
          enabled     => $remi_php71_test_debuginfo_enabled,
          includepkgs => $remi_php71_test_debuginfo_includepkgs,
          exclude     => $remi_php71_test_debuginfo_exclude;

        'remi-php72':
          descr       => "Remi's PHP 7.2 RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch",
          baseurl     => $remi_php72_baseurl,
          mirrorlist  => $remi_php72_mirrorlist,
          enabled     => $remi_php72_enabled,
          includepkgs => $remi_php72_includepkgs,
          exclude     => $remi_php72_exclude;

        'remi-php72-debuginfo':
          descr       => "Remi's PHP 7.2 RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch - debuginfo",
          baseurl     => $remi_php72_debuginfo_baseurl,
          mirrorlist  => $remi_php72_debuginfo_mirrorlist,
          enabled     => $remi_php72_debuginfo_enabled,
          includepkgs => $remi_php72_debuginfo_includepkgs,
          exclude     => $remi_php72_debuginfo_exclude;

        'remi-php72-test':
          descr       => "Remi's PHP 7.2 test RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch",
          baseurl     => $remi_php72_test_baseurl,
          mirrorlist  => $remi_php72_test_mirrorlist,
          enabled     => $remi_php72_test_enabled,
          includepkgs => $remi_php72_test_includepkgs,
          exclude     => $remi_php72_test_exclude;

        'remi-php72-test-debuginfo':
          descr       => "Remi's PHP 7.2 test RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch - debuginfo",
          baseurl     => $remi_php72_test_debuginfo_baseurl,
          mirrorlist  => $remi_php72_test_debuginfo_mirrorlist,
          enabled     => $remi_php72_test_debuginfo_enabled,
          includepkgs => $remi_php72_test_debuginfo_includepkgs,
          exclude     => $remi_php72_test_debuginfo_exclude;

        'remi-php73':
          descr       => "Remi's PHP 7.3 RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch",
          baseurl     => $remi_php73_baseurl,
          mirrorlist  => $remi_php73_mirrorlist,
          enabled     => $remi_php73_enabled,
          includepkgs => $remi_php73_includepkgs,
          exclude     => $remi_php73_exclude;

        'remi-php73-debuginfo':
          descr       => "Remi's PHP 7.3 RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch - debuginfo",
          baseurl     => $remi_php73_debuginfo_baseurl,
          mirrorlist  => $remi_php73_debuginfo_mirrorlist,
          enabled     => $remi_php73_debuginfo_enabled,
          includepkgs => $remi_php73_debuginfo_includepkgs,
          exclude     => $remi_php73_debuginfo_exclude;

        'remi-php73-test':
          descr       => "Remi's PHP 7.3 test RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch",
          baseurl     => $remi_php73_test_baseurl,
          mirrorlist  => $remi_php73_test_mirrorlist,
          enabled     => $remi_php73_test_enabled,
          includepkgs => $remi_php73_test_includepkgs,
          exclude     => $remi_php73_test_exclude;

        'remi-php73-test-debuginfo':
          descr       => "Remi's PHP 7.3 test RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch - debuginfo",
          baseurl     => $remi_php73_test_debuginfo_baseurl,
          mirrorlist  => $remi_php73_test_debuginfo_mirrorlist,
          enabled     => $remi_php73_test_debuginfo_enabled,
          includepkgs => $remi_php73_test_debuginfo_includepkgs,
          exclude     => $remi_php73_test_debuginfo_exclude;

        'remi-php74':
          descr       => "Remi's PHP 7.4 RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch",
          baseurl     => $remi_php74_baseurl,
          mirrorlist  => $remi_php74_mirrorlist,
          enabled     => $remi_php74_enabled,
          includepkgs => $remi_php74_includepkgs,
          exclude     => $remi_php74_exclude;

        'remi-php74-debuginfo':
          descr       => "Remi's PHP 7.4 RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch - debuginfo",
          baseurl     => $remi_php74_debuginfo_baseurl,
          mirrorlist  => $remi_php74_debuginfo_mirrorlist,
          enabled     => $remi_php74_debuginfo_enabled,
          includepkgs => $remi_php74_debuginfo_includepkgs,
          exclude     => $remi_php74_debuginfo_exclude;

        'remi-php74-test':
          descr       => "Remi's PHP 7.4 test RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch",
          baseurl     => $remi_php74_test_baseurl,
          mirrorlist  => $remi_php74_test_mirrorlist,
          enabled     => $remi_php74_test_enabled,
          includepkgs => $remi_php74_test_includepkgs,
          exclude     => $remi_php74_test_exclude;

        'remi-php74-test-debuginfo':
          descr       => "Remi's PHP 7.4 test RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch - debuginfo",
          baseurl     => $remi_php74_test_debuginfo_baseurl,
          mirrorlist  => $remi_php74_test_debuginfo_mirrorlist,
          enabled     => $remi_php74_test_debuginfo_enabled,
          includepkgs => $remi_php74_test_debuginfo_includepkgs,
          exclude     => $remi_php74_test_debuginfo_exclude;

        'remi-php80':
          descr       => "Remi's PHP 8.0 RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch",
          baseurl     => $remi_php80_baseurl,
          mirrorlist  => $remi_php80_mirrorlist,
          enabled     => $remi_php80_enabled,
          includepkgs => $remi_php80_includepkgs,
          exclude     => $remi_php80_exclude;

        'remi-php80-debuginfo':
          descr       => "Remi's PHP 8.0 RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch - debuginfo",
          baseurl     => $remi_php80_debuginfo_baseurl,
          mirrorlist  => $remi_php80_debuginfo_mirrorlist,
          enabled     => $remi_php80_debuginfo_enabled,
          includepkgs => $remi_php80_debuginfo_includepkgs,
          exclude     => $remi_php80_debuginfo_exclude;

        'remi-php80-test':
          descr       => "Remi's PHP 8.0 test RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch",
          baseurl     => $remi_php80_test_baseurl,
          mirrorlist  => $remi_php80_test_mirrorlist,
          enabled     => $remi_php80_test_enabled,
          includepkgs => $remi_php80_test_includepkgs,
          exclude     => $remi_php80_test_exclude;

        'remi-php80-test-debuginfo':
          descr       => "Remi's PHP 8.0 test RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch - debuginfo",
          baseurl     => $remi_php80_test_debuginfo_baseurl,
          mirrorlist  => $remi_php80_test_debuginfo_mirrorlist,
          enabled     => $remi_php80_test_debuginfo_enabled,
          includepkgs => $remi_php80_test_debuginfo_includepkgs,
          exclude     => $remi_php80_test_debuginfo_exclude;

        'remi-php81':
          descr       => "Remi's PHP 8.1 RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch",
          baseurl     => $remi_php81_baseurl,
          mirrorlist  => $remi_php81_mirrorlist,
          enabled     => $remi_php81_enabled,
          includepkgs => $remi_php81_includepkgs,
          exclude     => $remi_php81_exclude;

        'remi-php81-debuginfo':
          descr       => "Remi's PHP 8.1 RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch - debuginfo",
          baseurl     => $remi_php81_debuginfo_baseurl,
          mirrorlist  => $remi_php81_debuginfo_mirrorlist,
          enabled     => $remi_php81_debuginfo_enabled,
          includepkgs => $remi_php81_debuginfo_includepkgs,
          exclude     => $remi_php81_debuginfo_exclude;

        'remi-php81-test':
          descr       => "Remi's PHP 8.1 test RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch",
          baseurl     => $remi_php81_test_baseurl,
          mirrorlist  => $remi_php81_test_mirrorlist,
          enabled     => $remi_php81_test_enabled,
          includepkgs => $remi_php81_test_includepkgs,
          exclude     => $remi_php81_test_exclude;

        'remi-php81-test-debuginfo':
          descr       => "Remi's PHP 8.1 test RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch - debuginfo",
          baseurl     => $remi_php81_test_debuginfo_baseurl,
          mirrorlist  => $remi_php81_test_debuginfo_mirrorlist,
          enabled     => $remi_php81_test_debuginfo_enabled,
          includepkgs => $remi_php81_test_debuginfo_includepkgs,
          exclude     => $remi_php81_test_debuginfo_exclude;

        'remi-php82':
          descr       => "Remi's PHP 8.1 RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch",
          baseurl     => $remi_php82_baseurl,
          mirrorlist  => $remi_php82_mirrorlist,
          enabled     => $remi_php82_enabled,
          includepkgs => $remi_php82_includepkgs,
          exclude     => $remi_php82_exclude;

        'remi-php82-debuginfo':
          descr       => "Remi's PHP 8.1 RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch - debuginfo",
          baseurl     => $remi_php82_debuginfo_baseurl,
          mirrorlist  => $remi_php82_debuginfo_mirrorlist,
          enabled     => $remi_php82_debuginfo_enabled,
          includepkgs => $remi_php82_debuginfo_includepkgs,
          exclude     => $remi_php82_debuginfo_exclude;

        'remi-php82-test':
          descr       => "Remi's PHP 8.1 test RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch",
          baseurl     => $remi_php82_test_baseurl,
          mirrorlist  => $remi_php82_test_mirrorlist,
          enabled     => $remi_php82_test_enabled,
          includepkgs => $remi_php82_test_includepkgs,
          exclude     => $remi_php82_test_exclude;

        'remi-php82-test-debuginfo':
          descr       => "Remi's PHP 8.1 test RPM repository for Enterprise Linux ${osreleasemaj} - \$basearch - debuginfo",
          baseurl     => $remi_php82_test_debuginfo_baseurl,
          mirrorlist  => $remi_php82_test_debuginfo_mirrorlist,
          enabled     => $remi_php82_test_debuginfo_enabled,
          includepkgs => $remi_php82_test_debuginfo_includepkgs,
          exclude     => $remi_php82_test_debuginfo_exclude;
      }
    }
  } else {
    notice("This remi module does not support ${::facts['os']['name']}.")
  }
}
