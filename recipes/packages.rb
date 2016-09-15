node['kafka-manager']['packages'].each do |pkg|
  package pkg do
    action :install
  end
end
