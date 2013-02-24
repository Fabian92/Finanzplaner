require 'spec_helper'

describe "fianzens/new" do
  before(:each) do
    assign(:fianzen, stub_model(Fianzen).as_new_record)
  end

  it "renders new fianzen form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => fianzens_path, :method => "post" do
    end
  end
end
