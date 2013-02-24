require 'spec_helper'

describe "fianzens/show" do
  before(:each) do
    @fianzen = assign(:fianzen, stub_model(Fianzen))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
