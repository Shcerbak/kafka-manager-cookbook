path = node['kafka-manager']['path']
link "#{path}/kafka-manager" do
  to "#{path}/kafka-manager-#{node['kafka-manager']['version']}"
end

template "#{path}/kafka-manager-#{node['kafka-manager']['version']}/conf/application.conf" do
  source 'application.conf.erb'
  owner 'root'
  group 'root'
  mode '0644'

  notifies :restart, 'service[kafka-manager]', :delayed
end
