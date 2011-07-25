require "spec_helper"

describe WelcomeController do
  it "routes to /" do
    { :get => "/" }.should be_routable
  end
end
