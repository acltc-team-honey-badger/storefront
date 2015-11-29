class ProductsController < ApplicationController

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
  if params[:id] == "random"
    @product = Product.all.sample
  else
    @product = Product.find_by(id: params[:id])
  end
end

def new
  @product = Product.new
end
def create
  @product = Product.new(id: params[:id], name: params[:name], price: params[:price], description: params[:description], rating: params[:rating], user_id: current_user.id)
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
  @product.update(id: params[:id], name: params[:name], price: params[:price], image: params[:image], description: params[:description], rating: params[:rating])
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


end
