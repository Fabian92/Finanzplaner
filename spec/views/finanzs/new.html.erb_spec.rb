require 'spec_helper'

describe "finanzs/new" do
  before(:each) do
    assign(:finanz, stub_model(Finanz,
      :Title => "MyString",
      :Zahlungstyp => "MyString",
      :Wert => "MyString"
    ).as_new_record)
  end

  it "renders new finanz form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => finanzs_path, :method => "post" do
      assert_select "input#finanz_Title", :name => "finanz[Title]"
      assert_select "input#finanz_Zahlungstyp", :name => "finanz[Zahlungstyp]"
      assert_select "input#finanz_Wert", :name => "finanz[Wert]"
    end
  end
end
