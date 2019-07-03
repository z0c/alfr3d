#
# Cookbook:: jrb_workstation
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

include_recipe 'jrb_workstation::osx_sudoers_nopass' if node['platform'] == 'mac_os_x'
include_recipe 'jrb_workstation::brew' if node['platform'] == 'mac_os_x'
include_recipe 'jrb_workstation::brew_cask' if node['platform'] == 'mac_os_x'
include_recipe 'jrb_workstation::vim'
include_recipe 'jrb_workstation::ruby'
include_recipe 'jrb_workstation::vagrant'
include_recipe 'jrb_workstation::osx_sudoers' if node['platform'] == 'mac_os_x'
