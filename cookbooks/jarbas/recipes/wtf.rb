#
# Cookbook:: jarbas
# Recipe:: wtf
#
# Copyright:: 2020, The Authors, All Rights Reserved.

package 'wtfutil' do
  action  :upgrade
  only_if { node['platform'] == 'mac_os_x' }
end
