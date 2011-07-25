require 'spec_helper'

describe "welcome/index.html.erb" do
  it "displays band name on homepage" do
    render
    rendered.should have_content("Sanatorium")
  end
end
