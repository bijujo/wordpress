#
# Cookbook:: wordpress
# Recipe:: mariadb
#
# Copyright:: 2019, The Authors, All Rights Reserved.
package %w(mariadb-server mariadb) do
  action :install
end
service "mariadb" do
  action [:enable, :start]
end
