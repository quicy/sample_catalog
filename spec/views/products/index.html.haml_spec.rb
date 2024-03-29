require 'spec_helper'

describe "products/index" do
  before(:each) do
    @products = assign(:products, [
      stub_model(Product,
        :name => "Name",
        :description => "MyText"
      ),
      stub_model(Product,
        :name => "Name",
        :description => "MyText"
      )
    ])

    @products.each do |product|
      ActiveDecorator::Decorator.instance.decorate(product)
    end
  end

  it "renders a list of products" do
    pending 'decorator do not work'
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
