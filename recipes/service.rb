template '/etc/init.d/kafka-manager' do
  source 'kafka-manager.erb'
  owner 'root'
  group 'root'
  mode '0751'
end

service 'kafka-manager' do
  supports :restart => true
  action [:enable, :start]
end
