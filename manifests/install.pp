# == Class: notepadplusplus::install
#
# This class installs notepadplusplus
#
class notepadplusplus::install
(
    $ensure

) inherits notepadplusplus::params
{
    package { $::notepadplusplus::params::package_name:
        ensure   => $ensure,
        provider => $::notepadplusplus::params::package_provider,
    }
}
