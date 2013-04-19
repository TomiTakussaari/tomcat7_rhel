require 'spec_helper'

describe 'tomcat7_rhel' do
  let(:title) { 'foo' }

  it { should include_class('tomcat7_rhel::jpackage_repo') }

  it {
    should contain_package('tomcat7').with({
      'ensure'  => 'latest'
    })
  }

  it { should contain_package("java-1.7.0") }

  it { should contain_package("java-1.7.0") }
end
