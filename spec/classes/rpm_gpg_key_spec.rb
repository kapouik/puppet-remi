require 'spec_helper'

describe 'remi::rpm_gpg_key' do
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts) do
        facts
      end

      context 'with defaults' do
        it { is_expected.to compile }
        it { is_expected.to compile.with_all_deps }
        it { is_expected.to contain_class('remi::rpm_gpg_key') }

        case facts[:operatingsystemmajrelease]
        when '7'
          it { is_expected.to contain_file('/etc/pki/rpm-gpg/RPM-GPG-KEY-remi').with_ensure('present') }
          it { is_expected.to contain_exec('import-remi').with_command('rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-remi') }

        when '8'
          it { is_expected.to contain_file('/etc/pki/rpm-gpg/RPM-GPG-KEY-remi.el8').with_ensure('present') }
          it { is_expected.to contain_exec('import-remi').with_command('rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-remi.el8') }

        end
      end

      context 'with absent' do
        let(:params) { { ensure: 'absent' } }

        it { is_expected.to compile }

        case facts[:operatingsystemmajrelease]
        when '7'
          it { is_expected.to contain_file('/etc/pki/rpm-gpg/RPM-GPG-KEY-remi').with_ensure('absent') }

        when '8'
          it { is_expected.to contain_file('/etc/pki/rpm-gpg/RPM-GPG-KEY-remi.el8').with_ensure('absent') }

        end
      end
    end
  end
end
