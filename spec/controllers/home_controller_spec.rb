require 'spec_helper'

describe HomeController do

  describe "GET 'impressum'" do
    it "returns http success" do
      get 'impressum'
      response.should be_success
    end
  end

end
