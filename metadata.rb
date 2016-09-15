name             'kafka-manager'
maintainer       'Shcerbak'
maintainer_email 'shcerbak@gmail.com'
license          'apache 2'
description      'Install kafka-manager'
long_description 'Install kafka-manager'
issues_url       'https://github.com/Shcerbak/kafka-manager-cookbook/issues' if respond_to?(:issues_url)
source_url       'https://github.com/Shcerbak/kafka-manager-cookbook' if respond_to?(:source_url)
version          '0.1.0'

depends 'apt'
depends 'java'

supports 'debian'
