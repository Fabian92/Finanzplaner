require 'spec_helper'

describe "finanzs/show" do
  before(:each) do
    @finanz = assign(:finanz, stub_model(Finanz,
      :Title => "Title",
      :Zahlungstyp => "Zahlungstyp",
      :Wert => "Wert"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Zahlungstyp/)
    rendered.should match(/Wert/)
  end
end
