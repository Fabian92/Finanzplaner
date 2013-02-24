require 'spec_helper'

describe "finanzpositions/edit" do
  before(:each) do
    @finanzposition = assign(:finanzposition, stub_model(Finanzposition,
      :FinanzenNr => 1,
      :Art => "MyString",
      :Beschreibung => "MyString",
      :Wert => 1.5
    ))
  end

  it "renders the edit finanzposition form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => finanzpositions_path(@finanzposition), :method => "post" do
      assert_select "input#finanzposition_FinanzenNr", :name => "finanzposition[FinanzenNr]"
      assert_select "input#finanzposition_Art", :name => "finanzposition[Art]"
      assert_select "input#finanzposition_Beschreibung", :name => "finanzposition[Beschreibung]"
      assert_select "input#finanzposition_Wert", :name => "finanzposition[Wert]"
    end
  end
end
