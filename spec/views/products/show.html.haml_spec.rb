require 'spec_helper'

describe "products/show" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :name => "Name",
      :description => "MyText"
    ))
    ActiveDecorator::Decorator.instance.decorate(@product)
  end

  it "renders attributes in <p>" do
    pending 'decorator do not work'
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
  end
end
