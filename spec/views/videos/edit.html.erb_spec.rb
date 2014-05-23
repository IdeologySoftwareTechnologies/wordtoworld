require 'spec_helper'

describe "videos/edit" do
  before(:each) do
    @video = assign(:video, stub_model(Video,
      :title => "MyString",
      :video_file => "MyString",
      :status => false,
      :admin => nil
    ))
  end

  it "renders the edit video form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", video_path(@video), "post" do
      assert_select "input#video_title[name=?]", "video[title]"
      assert_select "input#video_video_file[name=?]", "video[video_file]"
      assert_select "input#video_status[name=?]", "video[status]"
      assert_select "input#video_admin[name=?]", "video[admin]"
    end
  end
end
