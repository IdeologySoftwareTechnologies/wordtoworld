require 'spec_helper'

describe "albums/new" do
  before(:each) do
    assign(:album, stub_model(Album,
      :title => "MyString",
      :album_cover => "MyString",
      :album_type => 1,
      :status => false,
      :admin => nil
    ).as_new_record)
  end

  it "renders new album form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", albums_path, "post" do
      assert_select "input#album_title[name=?]", "album[title]"
      assert_select "input#album_album_cover[name=?]", "album[album_cover]"
      assert_select "input#album_album_type[name=?]", "album[album_type]"
      assert_select "input#album_status[name=?]", "album[status]"
      assert_select "input#album_admin[name=?]", "album[admin]"
    end
  end
end
