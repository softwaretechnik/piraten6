# == Schema Information
#
# Table name: services
#
#  id           :integer         not null, primary key
#  hostname     :string(255)
#  description  :string(255)
#  ipv4         :string(255)
#  ipv6         :string(255)
#  show         :boolean
#  country      :string(255)
#  state        :string(255)
#  provider     :string(255)
#  asn          :string(255)
#  last_checked :datetime
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#

require 'spec_helper'

describe Service do

  describe 'validations' do
    subject { create(:service) }

    it { should validate_uniqueness_of(:hostname)  }
    it { should validate_presence_of(:hostname)    }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:country)     }
  end

  describe 'should initialize empty address arrays' do
    subject { Service.new }

    its(:ipv4s) { should be_empty }
    its(:ipv6s) { should be_empty }
    its(:ipv4s) { should be_kind_of Array }
    its(:ipv6s) { should be_kind_of Array }
  end

  describe '#update_addresses' do
    subject { create(:service, hostname: 'example.org') }

    it 'should resolv the A and AAAA records for the given hostname' do
      subject.update_addresses
      subject.ipv4s.should == [ '192.0.43.10' ]
      subject.ipv6s.should == [ '2001:500:88:200::10' ]
    end

    it 'should overwrite the current saved ip addresses when resolving fails' do
      subject.update_addresses
      subject.hostname = 'bad.example.org'

      subject.update_addresses

      subject.ipv4s.should be_empty
      subject.ipv6s.should be_empty
    end
  end

  describe "#update_addresses!" do
    subject { create(:service) }

    it 'should #update_addresses and #save! the result' do
      subject.should_receive(:update_addresses).once
      subject.should_receive(:save!).once

      subject.update_addresses!
    end
  end

  describe ".update_addresses!" do
    subject { Service }
    let(:services) do
      result = []
      3.times { result << build(:service) }
      result
    end

    it 'should work on all services' do
      subject.should_receive(:all).once.and_return([])
      subject.update_addresses!
    end

    it 'should call #update_addresses! on each result' do
      services.should have(3).elements
      services.each { |s| s.should_receive(:update_addresses!) }
      subject.should_receive(:all).once.and_return services

      subject.update_addresses!
    end
  end

  context 'ip4/ipv6/dualstack recognition' do
    let(:dualstack) { build(:dualstack_service) }
    let(:ipv4only)  { build(:ipv4only_service) }
    let(:ipv6only)  { build(:ipv6only_service) }

    describe '#only_ipv4?' do
      it 'should return true when the service is ipv4 only' do
        ipv4only.should be_only_ipv4
      end

      it 'should return false when the service is ipv6 only' do
        ipv6only.should_not be_only_ipv4
      end

      it 'should return false when the service is dual-stack' do
        dualstack.should_not be_only_ipv4
      end
    end

    describe '#only_ipv6?' do
      it 'should return false when the service is ipv4 only' do
        ipv4only.should_not be_only_ipv6
      end

      it 'should return true when the service is ipv6 only' do
        ipv6only.ipv4s.should be_empty
        ipv6only.should be_only_ipv6
      end

      it 'should return false when the service is dual-stack' do
        dualstack.should_not be_only_ipv6
      end
    end

    describe '#dualstack?' do
      it 'should return false when the service is ipv4 only' do
        ipv4only.should_not be_dualstack
      end

      it 'should return false when the service is ipv6 only' do
        ipv6only.should_not be_dualstack
      end

      it 'should return true when the service is dual-stack' do
        dualstack.should be_dualstack
      end
    end
  end

  context 'misc' do
    describe '.states' do
      subject { Service }
      specify { subject.states.should == %w(BW BY BE BB HB HH HE MV NI NW RP SL SN ST SH TH) }
    end
  end

  context 'api' do
    describe 'json' do
      subject { Service }
      specify { subject.public_fields.should == [ :hostname, :description, :ipv4s, :ipv6s, :updated_at, :state, :country ] }
    end
  end
end
