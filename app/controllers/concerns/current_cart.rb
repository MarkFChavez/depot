module CurrentCart
  private

  def set_cart
    if session[:cart_id]
      Cart.find(session[:cart_id])
    else
      Cart.create!
    end
  end
end
