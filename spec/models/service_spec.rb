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

    it { should validate_uniqueness_of(:hostname) }
    it { should validate_presence_of(:hostname) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:country) }
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
  end
  # d
  # def only_ipv4?
  #   ipv4s.size > 0 && ipv6s.size == 0
  # end

  # def only_ipv6?
  #   ipv6s.size > 0 && ipv6s.size == 0
  # end

  # def dualstack?
  #   ipv6s.size > 0 && ipv4s.size > 0
  # end

end
