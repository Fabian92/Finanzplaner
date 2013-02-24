require 'spec_helper'

describe "fianzens/index" do
  before(:each) do
    assign(:fianzens, [
      stub_model(Fianzen),
      stub_model(Fianzen)
    ])
  end

  it "renders a list of fianzens" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
