#
# == Class: notepadplusplus::params
#
# Defines some variables based on the operating system
#
class notepadplusplus::params {

    case $::osfamily {
        'windows': {
            $package_name = 'notepadplusplus'
            $package_provider = 'chocolatey'
        }

        default: {
            fail("Unsupported OS: ${::osfamily}")
        }
    }
}
