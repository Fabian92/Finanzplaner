require 'spec_helper'

describe "finanzpositions/index" do
  before(:each) do
    assign(:finanzpositions, [
      stub_model(Finanzposition,
        :FinanzenNr => 1,
        :Art => "Art",
        :Beschreibung => "Beschreibung",
        :Wert => 1.5
      ),
      stub_model(Finanzposition,
        :FinanzenNr => 1,
        :Art => "Art",
        :Beschreibung => "Beschreibung",
        :Wert => 1.5
      )
    ])
  end

  it "renders a list of finanzpositions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Art".to_s, :count => 2
    assert_select "tr>td", :text => "Beschreibung".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
