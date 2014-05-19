require 'spec_helper'

describe "albums/index" do
  before(:each) do
    assign(:albums, [
      stub_model(Album,
        :title => "Title",
        :album_cover => "Album Cover",
        :album_type => 1,
        :status => false,
        :admin => nil
      ),
      stub_model(Album,
        :title => "Title",
        :album_cover => "Album Cover",
        :album_type => 1,
        :status => false,
        :admin => nil
      )
    ])
  end

  it "renders a list of albums" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Album Cover".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
