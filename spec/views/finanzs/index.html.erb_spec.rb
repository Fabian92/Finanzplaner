require 'spec_helper'

describe "finanzs/index" do
  before(:each) do
    assign(:finanzs, [
      stub_model(Finanz,
        :Title => "Title",
        :Zahlungstyp => "Zahlungstyp",
        :Wert => "Wert"
      ),
      stub_model(Finanz,
        :Title => "Title",
        :Zahlungstyp => "Zahlungstyp",
        :Wert => "Wert"
      )
    ])
  end

  it "renders a list of finanzs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Zahlungstyp".to_s, :count => 2
    assert_select "tr>td", :text => "Wert".to_s, :count => 2
  end
end
