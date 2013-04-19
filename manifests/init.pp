class tomcat7_rhel {
  include tomcat7_rhel::jpackage_repo
  include tomcat7_rhel::java

  package { "tomcat7":
    ensure => latest,
    require => [Yumrepo['jpackage'], Package["java-1.7.0"]]
  }
}
