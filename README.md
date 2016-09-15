# Description

This cookbook installs Kafka-manager in very basic manner.
Kafka-manager depends java 8

# Usage

Modify `default['kafka-manager']['version']` and `default['kafka-manager']['checksum']` to change Kafka-manager UI version.
Modify `default['kafka-manager']['port']` if you want to change default Kafka-manager port
Modify `default['kafka-manager']['java']['install']` if you haven't java installed, and select java 8
Modify `default['kafka-manager']['config']['zkhosts']` with your zookeeper path
Updtae `default['kafka-manager']['config']['basicAuthentication']` if you want to add basic authentication

# Requirements

## Platform:

* debian

## Cookbooks:

* apt
* java

# Attributes

* `node['kafka-manager']['config']['zkhosts']` -  Defaults to `localhost:2181/kafka`.
* `node['kafka-manager']['config']['basicAuthentication']['enabled']` -  Defaults to `false`.
* `node['kafka-manager']['config']['basicAuthentication']['username']` -  Defaults to `admin`.
* `node['kafka-manager']['config']['basicAuthentication']['password']` -  Defaults to `password`.
* `node['kafka-manager']['config']['basicAuthentication']['realm']` -  Defaults to `Kafka-Manager`.
* `node['kafka-manager']['version']` -  Defaults to `1.3.1.8`.
* `node['kafka-manager']['checksum']` -  Defaults to `be9cd3f249aa0c8af231b484bd6a55c721b2d2a33814afcedb7d1c3f533865d7`.
* `node['kafka-manager']['path']` -  Defaults to `/opt`.
* `node['kafka-manager']['port']` -  Defaults to `9000`.
* `node['kafka-manager']['java']['install']` -  Defaults to `true`.
* `node['java']['install_flavor']` -  Defaults to `oracle`.
* `node['java']['jdk_version']` -  Defaults to `8`.
* `node['java']['oracle']['accept_oracle_download_terms']` -  Defaults to `true`.
* `node['kafka-manager']['packages']` -  Defaults to `%w(unzip)`.
* `node['kafka-manager']['sbt']['repository']['uri']` -  Defaults to `https://dl.bintray.com/sbt/debian`.
* `node['kafka-manager']['sbt']['repository']['dist']` -  Defaults to `/`.
* `node['kafka-manager']['sbt']['repository']['key']` -  Defaults to `2EE0EA64E40A89B84B2DF73499E82A75642AC823`.
* `node['kafka-manager']['sbt']['repository']['keyserver']` -  Defaults to `keyserver.ubuntu.com`.
* `node['kafka-manager']['sbt']['package']` -  Defaults to `sbt`.
* `node['kafka-manager']['sbt']['version']` -  Defaults to `0.13.12`.

# Recipes

* kafka-manager::configure
* kafka-manager::default
* kafka-manager::install
* kafka-manager::packages
* kafka-manager::sbt
* kafka-manager::service

# License and Maintainer

Maintainer:: Shcerbak (<shcerbak@gmail.com>)
Source:: https://github.com/Shcerbak/kafka-manager-cookbook
Issues:: https://github.com/Shcerbak/kafka-manager-cookbook/issues

License:: apache 2
