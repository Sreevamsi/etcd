#
# Cookbook Name:: etcd
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#



# deployment of the release package and linking to /usr/local/bin
ark 'etcd' do
  url node[:etcd][:download_url]
  has_binaries ['etcd', 'etcdctl']
end

# create directory for etcd data
directory '/var/etcd' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

# create upstart script for etcd service
template '/etc/init/etcd.conf' do
  source 'etcd.conf.erb'
  owner 'root'
  group 'root'
  mode '0755'
end

# enable and start etcd service
service "etcd" do
  supports :status => true, :restart => true
  action [ :enable, :start ]
end


