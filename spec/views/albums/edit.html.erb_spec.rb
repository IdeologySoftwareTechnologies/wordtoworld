require 'spec_helper'

describe "albums/edit" do
  before(:each) do
    @album = assign(:album, stub_model(Album,
      :title => "MyString",
      :album_cover => "MyString",
      :album_type => 1,
      :status => false,
      :admin => nil
    ))
  end

  it "renders the edit album form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", album_path(@album), "post" do
      assert_select "input#album_title[name=?]", "album[title]"
      assert_select "input#album_album_cover[name=?]", "album[album_cover]"
      assert_select "input#album_album_type[name=?]", "album[album_type]"
      assert_select "input#album_status[name=?]", "album[status]"
      assert_select "input#album_admin[name=?]", "album[admin]"
    end
  end
end
