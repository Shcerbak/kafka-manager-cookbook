km_zip = ::File.join(Chef::Config[:file_cache_path], 'kafka-manager.zip')
path = node['kafka-manager']['path']
version = node['kafka-manager']['version']

remote_file km_zip do
  owner 'root'
  group 'root'
  mode '0644'
  source "https://github.com/yahoo/kafka-manager/archive/#{version}.zip"
  checksum node['kafka-manager']['checksum']

  notifies :run, 'execute[unzip_tmp]', :immediately
end

execute 'unzip_tmp' do
  command "unzip #{km_zip} -d /tmp"

  not_if { File.directory?("#{path}/kafka-manager-#{version}") }
  not_if { File.directory?("/tmp/kafka-manager-#{version}") }
end

execute 'sbt' do
  command 'sbt clean dist'
  cwd "/tmp/kafka-manager-#{node['kafka-manager']['version']}"

  not_if { File.directory?("#{path}/kafka-manager-#{version}") }
end

execute 'unzip_opt' do
  command "unzip target/universal/kafka-manager-#{node['kafka-manager']['version']} -d #{path}"
  cwd "/tmp/kafka-manager-#{version}"

  not_if { File.directory?("#{path}/kafka-manager-#{version}") }
end
