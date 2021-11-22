#
# Cookbook:: jarbas
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

# OS configuration
include_recipe 'jarbas::platform_arch' if node['platform'] == 'arch'
include_recipe 'jarbas::platform_mac_os_x' if node['platform'] == 'mac_os_x'

include_recipe 'jarbas::git'
include_recipe 'jarbas::zsh'
include_recipe 'jarbas::bash'
include_recipe 'jarbas::vim'
include_recipe 'jarbas::ranger'
include_recipe 'jarbas::packages'
include_recipe 'jarbas::vscode'
include_recipe 'jarbas::brave'


include_recipe 'jarbas::heroku'
include_recipe 'jarbas::docker'
include_recipe 'jarbas::vagrant' if node['platform'] == 'mac_os_x'


# Terminal
include_recipe 'jarbas::termite' if node['platform'] == 'arch'
include_recipe 'jarbas::iterm' if node['platform'] == 'mac_os_x'

# Browser
include_recipe 'jarbas::qutebrowser'

# Window manager
include_recipe 'jarbas::xorg' if node['platform'] == 'arch'
include_recipe 'jarbas::i3' if node['platform'] == 'arch'

# Tools
include_recipe 'jarbas::teamviewer'

# Chef
#TODO: Failing on arch with the following exception
#TODO: Not working on mac_os_x with cinc
#FATAL: Mixlib::Install::Options::InvalidOptions: chef_client_updater[Install latest] (jarbas::chef line 1) had an error: Mixlib::Install::Options::InvalidOptions: Unknown architecture determine.
#include_recipe 'jarbas::chef' if node['platform'] != 'arch'
