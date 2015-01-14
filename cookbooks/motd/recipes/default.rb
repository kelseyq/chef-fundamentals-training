#
# Cookbook Name:: motd
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
template "/etc/motd" do
  action :create
  mode '0644'
  owner 'root'
  group 'root'
  source "motd.erb"
  # content "You're good enough, you're smart enough, and doggone it, people like you!\n"
end
