class tomcat7_rhel::java($java_version) {
  case $operatingsystem {
    default: {
      package { "java-1.7.0":
        ensure => $java_version,
        name => "java-1.7.0-openjdk-devel",
      }
    }
  }
}