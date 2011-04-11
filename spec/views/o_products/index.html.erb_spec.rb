require 'spec_helper'

describe "o_products/index.html.erb" do
  before(:each) do
    assign(:o_products, [
      stub_model(OProduct,
        :title => "Title",
        :description => "MyText",
        :image_url => "Image Url"
      ),
      stub_model(OProduct,
        :title => "Title",
        :description => "MyText",
        :image_url => "Image Url"
      )
    ])
  end

  it "renders a list of o_products" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
  end
end
