require 'spec_helper'

describe "telephones/new" do
  before(:each) do
    assign(:telephone, stub_model(Telephone,
      :number => "MyString",
      :phoneable_type => "MyString",
      :phoneable_id => 1
    ).as_new_record)
  end

  it "renders new telephone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => telephones_path, :method => "post" do
      assert_select "input#telephone_number", :name => "telephone[number]"
      assert_select "input#telephone_phoneable_type", :name => "telephone[phoneable_type]"
      assert_select "input#telephone_phoneable_id", :name => "telephone[phoneable_id]"
    end
  end
end
