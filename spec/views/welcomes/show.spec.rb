require 'spec_helper'

describe "/welcome/show" do
  before(:each) do
    render 'welcome/show'
  end

  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/welcomes/index])
  end
end
