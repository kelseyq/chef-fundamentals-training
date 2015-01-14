#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package "httpd" do
  action :install
end

service "httpd" do
  action [:start, :enable]
end

template "/var/www/html/index.html" do
  action :create
  mode '0644'
  owner 'root'
  group 'root'
  source "index.html.erb" 
end
