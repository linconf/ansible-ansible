# encoding: utf-8
# author: Chad Sheets

title 'Ansible Install and Configuration'

only_if do
  command('ansible').exist?
end

control 'ansible-01' do
  impact 1.0
  title 'ansible | ansible.cfg'
  desc 'The ansible.cfg file should exist with proper permissions.'
  describe file('/etc/ansible/ansible.cfg') do
    it { should exist }
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    it { should be_readable.by('owner') }
    it { should be_readable.by('group') }
    it { should be_readable.by('other') }
    it { should be_writable.by('owner') }
    it { should_not be_writable.by('group') }
    it { should_not be_writable.by('other') }
    it { should_not be_executable }
  end
end

control 'ansible-02' do
  impact 1.0
  title 'ansible | Ensure role is properly configuring ansible.cfg'
  describe file('/etc/ansible/ansible.cfg') do
    its('content') { should match(%r{^remote_port    = 1234}) }
  end
end
