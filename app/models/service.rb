# encoding: UTF-8
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
require 'resolv'

class Service < ActiveRecord::Base
  attr_accessible :asn, :country, :description, :hostname, :ipv4s, :ipv6s, :last_checked, :provider, :show, :state

  validates :hostname, uniqueness: true, presence: true
  validates :description, presence: true
  validates :country, presence: true

  scope :active, where('show = ?', true)
  scope :nationwide, where('country = ? and state is null', 'DE')
  scope :statewide, lambda { |state| where('state == ?', state) }

  serialize :ipv4s
  serialize :ipv6s

  def initialize(*args)
    super
    self.ipv4s = []
    self.ipv6s = []
  end

  def update_addresses
    resolver = Resolv::DNS.new
    self.ipv4s = resources_to_array_of_strings resolver.getresources(self.hostname, Resolv::DNS::Resource::IN::A)
    self.ipv6s = resources_to_array_of_strings resolver.getresources(self.hostname, Resolv::DNS::Resource::IN::AAAA)
  end

  def update_addresses!
    update_addresses
    save!
  end

  def resources_to_array_of_strings(resources)
    resources.map(&:address).map(&:to_s)
  end

  def only_ipv4?
    ipv4s.size > 0 && ipv6s.empty?
  end

  def only_ipv6?
    ipv6s.size > 0 && ipv4s.empty?
  end

  def dualstack?
    ipv6s.size > 0 && ipv4s.size > 0
  end

  def self.public_fields
    [ :hostname, :description, :ipv4s, :ipv6s, :updated_at, :state, :country ]
  end


  def self.states
    %w(BW BY BE BB HB HH HE MV NI NW RP SL SN ST SH TH)
  end

  def self.update_addresses!
    all.map(&:update_addresses!)
  end

end
