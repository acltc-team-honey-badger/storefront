class ProductsController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show, :search]
  # before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]


  def index
    @categories = Category.all
    if params[:view] == "discounted"
      @products = Product.get_discounted
    elsif params[:view] == "order_by_price"
      @products = Product.order(:price)
    elsif params[:view] == "order_by_price_desc"
      @products = Product.order(price: :desc)
    elsif params[:category]
      @products = Category.find_by(name: params[:category]).products
    else
      @products = Product.all
    end
  end

  def show
    @carted_product = CartedProduct.new
    if params[:id] == "random"
      @product = Product.all.sample
    else
      @product = Product.find_by(id: params[:id])
    end
  end

  def new
    @product = Product.new
    @product.images.build
  end

  def create
    @product = Product.new(product_params)
    if @product.save
    flash[:success] = "Taco made!"
    redirect_to "/products/#{@product.id}"
    else
      render :new
    end
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(product_params)
    flash[:success] = "This taco has been updated!"
    redirect_to "/products/#{@product.id}"
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    flash[:warning] = "Taco destroyed!"
    redirect_to "/"
  end

  def search
    search_term = params[:search]
    @products = Product.where("name LIKE ? OR description LIKE ?", "%#{search_term}%", "%#{search_term}%")
    render :index
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :description, :rating, :supplier_id, images_attributes: [:id, :image_url])
  end


end
