class ChargesController < ApplicationController

  def new
    @cart_items = current_user.cart_items
  end

def create
  @cart_items = current_user.cart_items
  @cart_item = CartItem.find(params[:id])
  # Amount in cents
  @amount = (@cart_items.post.price * 100).to_i

  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Rails Stripe customer',
    :currency    => 'aud'
  )

@transaction = Transaction.create(amount: @amount, user_id: current_user.id, cart_item_id: @cart_item.id)

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end
end
