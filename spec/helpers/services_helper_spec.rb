require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the ServicesHelper. For example:
#
# describe ServicesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end
describe ServicesHelper do
  describe '.whois_url' do
    it 'should return a link to the RIPE whois webservice for an IPv4 address' do
      helper.whois_url('1.2.3.4').should == 'https://apps.db.ripe.net/search/query.html?searchtext=1.2.3.4&searchSubmit=search'
    end

    it 'should return a link to the RIPE whois webservice for an IPv6 address' do
      helper.whois_url('2a01:4f8:140:3ffd:2::1').should == 'https://apps.db.ripe.net/search/query.html?searchtext=2a01:4f8:140:3ffd:2::1&searchSubmit=search'
    end
  end
end
