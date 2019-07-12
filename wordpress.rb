#
# Cookbook:: wordpress
# Recipe:: wordpress
#
# Copyright:: 2019, The Authors, All Rights Reserved.
remote_file "/tmp/wordpress-5.1.1.tar.gz" do
   source "https://wordpress.org/wordpress-5.1.1.tar.gz"
   action :create_if_missing
end
execute 'wordpress_extract' do
  command 'tar -xzf /tmp/wordpress-5.1.1.tar.gz --directory /tmp'
end
execute 'wordpress_extract' do
  command 'cp -r /tmp/wordpress/* /var/www/html/'
end 
