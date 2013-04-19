class tomcat7_rhel::java {
  case $operatingsystem {
    default: {
      package { "java-1.7.0":
        ensure => latest,
        name => "java-1.7.0-openjdk-devel",
      }
    }
  }
}