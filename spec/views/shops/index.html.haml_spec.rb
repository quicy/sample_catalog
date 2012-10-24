require 'spec_helper'

describe "shops/index" do
  before(:each) do
    assign(:shops, [
      stub_model(Shop,
        :name => "Name",
        :description => "MyText",
        :lines_summary => "Lines Summary",
        :image => "Image"
      ),
      stub_model(Shop,
        :name => "Name",
        :description => "MyText",
        :lines_summary => "Lines Summary",
        :image => "Image"
      )
    ])
  end

  it "renders a list of shops" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Lines Summary".to_s, :count => 2
    # assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
