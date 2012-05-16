require 'spec_helper'

describe 'Tutorial Page' do
  before do
    visit '/tutorial'
  end

  it 'should have a body' do
    page.should have_css('body')
  end
end
