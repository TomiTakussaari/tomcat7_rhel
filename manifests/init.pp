class tomcat7_rhel($tomcat_version=latest, $java_version=latest) {
  include tomcat7_rhel::jpackage_repo

  class { "tomcat7_rhel::java":
    java_version => $java_version,
  }
  include tomcat7_rhel::java

  package { "tomcat7":
    ensure => $tomcat_version,
    require => [Yumrepo['jpackage'], Package["java-1.7.0"]]
  }
}
