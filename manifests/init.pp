# == Class: notepadplusplus
#
# This class sets up notepadplusplus
#
# Currently functionality is limited to installing or removing the package.
#
# == Parameters
#
# [*manage*]
#   Whether to manage notepadplusplus using Puppet. Valid values are true (default) 
#   and false.
# [*ensure*]
#   Status of notepadplusplus. Valid values are 'present' (default) and 'absent'.
#
# == Authors
#
# Samuli Seppänen <samuli.seppanen@gmail.com>
#
# == License
#
# BSD-license. See file LICENSE for details.
#
class notepadplusplus
(
    Boolean                  $manage = true,
    Enum['present','absent'] $ensure = 'present'

) inherits notepadplusplus::params
{

if $manage {
    class { '::notepadplusplus::install':
        ensure => $ensure,
    }
}
}
