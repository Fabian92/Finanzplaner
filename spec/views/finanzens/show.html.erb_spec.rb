require 'spec_helper'

describe "finanzens/show" do
  before(:each) do
    @finanzen = assign(:finanzen, stub_model(Finanzen))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
