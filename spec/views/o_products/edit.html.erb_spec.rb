require 'spec_helper'

describe "o_products/edit.html.erb" do
  before(:each) do
    @o_product = assign(:o_product, stub_model(OProduct,
      :title => "MyString",
      :description => "MyText",
      :image_url => "MyString"
    ))
  end

  it "renders the edit o_product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => o_products_path(@o_product), :method => "post" do
      assert_select "input#o_product_title", :name => "o_product[title]"
      assert_select "textarea#o_product_description", :name => "o_product[description]"
      assert_select "input#o_product_image_url", :name => "o_product[image_url]"
    end
  end
end
