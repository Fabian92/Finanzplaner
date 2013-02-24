require 'spec_helper'

describe "finanzpositions/show" do
  before(:each) do
    @finanzposition = assign(:finanzposition, stub_model(Finanzposition,
      :FinanzenNr => 1,
      :Art => "Art",
      :Beschreibung => "Beschreibung",
      :Wert => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Art/)
    rendered.should match(/Beschreibung/)
    rendered.should match(/1.5/)
  end
end
