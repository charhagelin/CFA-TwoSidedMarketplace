require 'rails_helper'

RSpec.describe "cart_items/edit", type: :view do
  before(:each) do
    @cart_item = assign(:cart_item, CartItem.create!(
      :user => nil,
      :post => nil
    ))
  end

  it "renders the edit cart_item form" do
    render

    assert_select "form[action=?][method=?]", cart_item_path(@cart_item), "post" do

      assert_select "input#cart_item_user_id[name=?]", "cart_item[user_id]"

      assert_select "input#cart_item_post_id[name=?]", "cart_item[post_id]"
    end
  end
end
