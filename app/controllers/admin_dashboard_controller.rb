class AdminDashboardController < ApplicationController
  def index
    @cart_items = current_user.cart_items
    @users = User.all
    @posts = Post.all
    @posts = Post.order("created_at DESC").limit(5)
  end
end
