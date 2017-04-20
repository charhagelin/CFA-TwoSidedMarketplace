require 'rails_helper'

RSpec.describe "cart_items/new", type: :view do
  before(:each) do
    assign(:cart_item, CartItem.new(
      :user => nil,
      :post => nil
    ))
  end

  it "renders new cart_item form" do
    render

    assert_select "form[action=?][method=?]", cart_items_path, "post" do

      assert_select "input#cart_item_user_id[name=?]", "cart_item[user_id]"

      assert_select "input#cart_item_post_id[name=?]", "cart_item[post_id]"
    end
  end
end
