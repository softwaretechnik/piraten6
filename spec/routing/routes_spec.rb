require 'spec_helper'

describe 'Routes' do
  describe 'root_path' do
    it {
      { :get => root_path }.should route_to controller: 'services', action: 'index'
    }
  end
  describe 'tutorial page' do
    it {
      { :get => tutorial_path }.should route_to controller: 'pages', action: 'tutorial'
    }
  end
end

