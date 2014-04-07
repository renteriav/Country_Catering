require 'spec_helper'

describe "telephones/show" do
  before(:each) do
    @telephone = assign(:telephone, stub_model(Telephone,
      :number => "Number",
      :phoneable_type => "Phoneable Type",
      :phoneable_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Number/)
    rendered.should match(/Phoneable Type/)
    rendered.should match(/1/)
  end
end
