#
# Cookbook Name:: ntp
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package 'ntp' do
  action :install
end

package 'ntpdate' do
  action :install
end

template '/etc/ntp.conf' do
  action :create
  mode '0644'
  owner 'root'
  group 'root'
  source "ntp.conf.erb"
end

service "ntpd" do
  action [:start, :enable]
end
