include_recipe 'java' if node['kafka-manager']['java']['install']
include_recipe 'kafka-manager::sbt'
include_recipe 'kafka-manager::packages'

include_recipe 'kafka-manager::install'
include_recipe 'kafka-manager::configure'
include_recipe 'kafka-manager::service'
