# nagios openmanage
class dell::openmanage::nagios {

  package { 'nagios-plugins-openmanage':
    ensure => present,
  }

  @@nagios_service { "check_openmanage_${::fqdn}":
    check_command       => 'check_nrpe!check_openmanage',
    service_description => 'Dell OpenManage',
    use                 => '3min-service',
  }

  @@nagios_servicedependency { "check_openmanage_${::fqdn}":
    dependent_host_name           => $::fqdn,
    dependent_service_description => 'Dell OpenManage',
    service_description           => 'NRPE',
  }
}
