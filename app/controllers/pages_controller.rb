class PagesController < ApplicationController
  def index
      @cart_items = current_user.cart_items
  end


end
