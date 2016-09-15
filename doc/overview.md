This cookbook installs Kafka-manager in very basic manner.
Kafka-manager depends java 8

# Usage

Modify `default['kafka-manager']['version']` and `default['kafka-manager']['checksum']` to change Kafka-manager UI version.
Modify `default['kafka-manager']['port']` if you want to change default Kafka-manager port
Modify `default['kafka-manager']['java']['install']` if you haven't java installed, and select java 8
Modify `default['kafka-manager']['config']['zkhosts']` with your zookeeper path
Updtae `default['kafka-manager']['config']['basicAuthentication']` if you want to add basic authentication
