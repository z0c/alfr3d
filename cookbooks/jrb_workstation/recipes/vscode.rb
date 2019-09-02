#
# Cookbook:: jrb_workstation
# Recipe:: vscode
#
# Copyright:: 2019, The Authors, All Rights Reserved.

homebrew_cask 'visual-studio-code'

node['jrb_workstation']['vscode']['extensions'].each do |e|
  execute "install_vscode_extension[#{e}]" do
    command "code --install-extension #{e}"
    not_if "code --list-extensions |grep #{e}"
  end
end
