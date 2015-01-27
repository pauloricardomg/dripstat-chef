directory node['dripstat']['home'] do
  owner node['dripstat']['owner']
  group node['dripstat']['owner']
  mode 00755
  action :create
  recursive true
end

remote_file "#{node['dripstat']['home']}/#{node['dripstat']['agent']['zipname']}" do
  source node['dripstat']['agent']['url']
  owner node['dripstat']['owner']
  group node['dripstat']['owner']
end

package "unzip"

execute "unzip -j #{node['dripstat']['agent']['zipname']}" do
  cwd node['dripstat']['home']
  user node['dripstat']['owner']
  creates "#{node['dripstat']['home']}/dripstat.jar"
end

template "#{node['dripstat']['home']}/config.properties" do
  source  "dripstat.properties.erb"
  mode    "0644"
  owner   node['dripstat']['owner']
  group   node['dripstat']['owner']
end
