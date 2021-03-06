require 'spec_helper'

describe "telephones/index" do
  before(:each) do
    assign(:telephones, [
      stub_model(Telephone,
        :number => "Number",
        :phoneable_type => "Phoneable Type",
        :phoneable_id => 1
      ),
      stub_model(Telephone,
        :number => "Number",
        :phoneable_type => "Phoneable Type",
        :phoneable_id => 1
      )
    ])
  end

  it "renders a list of telephones" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => "Phoneable Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
