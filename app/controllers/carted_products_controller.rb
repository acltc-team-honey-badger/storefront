class CartedProductsController < ApplicationController

  def index
    if current_user && current_user.carted_products.where(status: "carted").any?
      @carted_products = current_user.carted_products.where(status: "carted")
      @subtotal = calculate_subtotal(@carted_products)
      @tax = calculate_tax(@carted_products)
      @total = @subtotal + @tax
    else
      redirect_to "/"
    end
  end


  def create
    @product = Product.find_by(id: params[:product_id])
    quantity = params[:quantity]
    @carted_product = CartedProduct.new(quantity: quantity, product_id: @product.id, status: "carted", user_id: current_user.id)
    if @carted_product.save
      flash[:success] = "#{quantity} #{@product.name}(s) Tacos added to your shopping cart."
      redirect_to "/"
    else
      render template: "products/show"
    end
  end

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.status ="removed"
    if carted_product.save
      flash[:warning] = "#{carted_product.quantity} #{carted_product.product.name}(s) removed from cart."
    else
      flash[:danger] = "Product not removed from cart!"
    end
    redirect_to "/carted_products"
  end

end