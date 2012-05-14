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

end
