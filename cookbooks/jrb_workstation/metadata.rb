name 'jrb_workstation'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'All Rights Reserved'
description 'Installs/Configures workstation'
long_description 'Installs/Configures workstation'
version '3.8.0'
chef_version '>= 12.14' if respond_to?(:chef_version)
issues_url 'https://github.com/z0c/jarbas/issues'
source_url 'https://github.com/z0c/jarbas'

supports 'arch'
supports 'mac_os_x'

depends 'homebrew'
depends 'macos'
depends 'vagrant'
