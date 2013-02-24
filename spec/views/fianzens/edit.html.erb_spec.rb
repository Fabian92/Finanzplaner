require 'spec_helper'

describe "fianzens/edit" do
  before(:each) do
    @fianzen = assign(:fianzen, stub_model(Fianzen))
  end

  it "renders the edit fianzen form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => fianzens_path(@fianzen), :method => "post" do
    end
  end
end
