class ChargesController < ApplicationController

  def new
    @cart_items = current_user.cart_items
  end

def create
  @cart_items = current_user.cart_items
  @total = current_user.cart_items.sum {|i| i.post.price}

  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @total * 100,
    :description => 'Rails Stripe customer',
    :currency    => 'aud'
  )

@cart_items.each do |i|
  i.destroy
end


rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end
end
