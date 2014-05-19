require 'spec_helper'

describe "albums/show" do
  before(:each) do
    @album = assign(:album, stub_model(Album,
      :title => "Title",
      :album_cover => "Album Cover",
      :album_type => 1,
      :status => false,
      :admin => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Album Cover/)
    rendered.should match(/1/)
    rendered.should match(/false/)
    rendered.should match(//)
  end
end
