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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :service do
    hostname 'www.piratenpartei.de'
    description 'Homepage der Piratenpartei Deutschland'
    show true
    country 'DE'
    state ''
  end
end
