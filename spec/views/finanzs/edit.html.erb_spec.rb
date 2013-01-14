require 'spec_helper'

describe "finanzs/edit" do
  before(:each) do
    @finanz = assign(:finanz, stub_model(Finanz,
      :Title => "MyString",
      :Zahlungstyp => "MyString",
      :Wert => "MyString"
    ))
  end

  it "renders the edit finanz form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => finanzs_path(@finanz), :method => "post" do
      assert_select "input#finanz_Title", :name => "finanz[Title]"
      assert_select "input#finanz_Zahlungstyp", :name => "finanz[Zahlungstyp]"
      assert_select "input#finanz_Wert", :name => "finanz[Wert]"
    end
  end
end
