require 'spec_helper'

describe "finanzens/index" do
  before(:each) do
    assign(:finanzens, [
      stub_model(Finanzen),
      stub_model(Finanzen)
    ])
  end

  it "renders a list of finanzens" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
