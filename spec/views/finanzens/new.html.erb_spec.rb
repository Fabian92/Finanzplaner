require 'spec_helper'

describe "finanzens/new" do
  before(:each) do
    assign(:finanzen, stub_model(Finanzen).as_new_record)
  end

  it "renders new finanzen form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => finanzens_path, :method => "post" do
    end
  end
end
