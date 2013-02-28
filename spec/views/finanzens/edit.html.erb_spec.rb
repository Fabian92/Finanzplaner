require 'spec_helper'

describe "finanzens/edit" do
  before(:each) do
    @finanzen = assign(:finanzen, stub_model(Finanzen))
  end

  it "renders the edit finanzen form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => finanzens_path(@finanzen), :method => "post" do
    end
  end
end
