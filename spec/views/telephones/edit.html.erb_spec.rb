require 'spec_helper'

describe "telephones/edit" do
  before(:each) do
    @telephone = assign(:telephone, stub_model(Telephone,
      :number => "MyString",
      :phoneable_type => "MyString",
      :phoneable_id => 1
    ))
  end

  it "renders the edit telephone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => telephones_path(@telephone), :method => "post" do
      assert_select "input#telephone_number", :name => "telephone[number]"
      assert_select "input#telephone_phoneable_type", :name => "telephone[phoneable_type]"
      assert_select "input#telephone_phoneable_id", :name => "telephone[phoneable_id]"
    end
  end
end
