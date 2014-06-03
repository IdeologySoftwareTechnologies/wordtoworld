require 'spec_helper'

describe "chapters/new" do
  before(:each) do
    assign(:chapter, stub_model(Chapter,
      :title => "MyString",
      :admin => nil
    ).as_new_record)
  end

  it "renders new chapter form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", chapters_path, "post" do
      assert_select "input#chapter_title[name=?]", "chapter[title]"
      assert_select "input#chapter_admin[name=?]", "chapter[admin]"
    end
  end
end
