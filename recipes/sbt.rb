include_recipe 'apt'

repo = node['kafka-manager']['sbt']['repository']
apt_repository 'sbt' do
  uri repo['uri']
  distribution repo['dist']
  key repo['key']
  keyserver repo['keyserver']
  action :add
end

package node['kafka-manager']['sbt']['package'] do
  version node['kafka-manager']['sbt']['version']
end
