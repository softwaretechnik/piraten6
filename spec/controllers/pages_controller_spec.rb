require 'spec_helper'

describe PagesController do

  describe "GET 'tutorial'" do
    it "returns http success" do
      get 'tutorial'
      response.should be_success
    end
  end

end
