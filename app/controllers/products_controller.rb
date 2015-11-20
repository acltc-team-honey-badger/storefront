class ProductsController < ApplicationController

def index
  if params[:view] == "discounted"
    @tacos = Product.get_discounted
  elsif params[:view] == "order_by_price"
    @tacos = Product.order(:price)
  elsif params[:view] == "order_by_price_desc"
    @tacos = Product.order(price: :desc)
  else
    @tacos = Product.all
  end
end

def show
  if params[:id] == "random"
    @taco = Product.all.sample
  else
    @taco = Product.find_by(id: params[:id])
  end
end

def new
end
def create
  @taco = Product.create(id: params[:id], name: params[:name], price: params[:price], image: params[:image], description: params[:description], rating: params[:rating])
  flash[:success] = "Taco made!"
  redirect_to "/products/#{@taco.id}"
end

def edit
  @taco = Product.find_by(id: params[:id])
end

def update
  @taco = Product.find_by(id: params[:id])
  @taco.update(id: params[:id], name: params[:name], price: params[:price], image: params[:image], description: params[:description], rating: params[:rating])
  flash[:success] = "This taco has been updated!"
  redirect_to "/products/#{@taco.id}"
end

def destroy
  @taco = Product.find_by(id: params[:id])
  @taco.destroy
  flash[:warning] = "Taco destroyed!"
  redirect_to "/"
end

def search
  search_term = params[:search]
  @tacos = Product.where("name LIKE ? OR description LIKE ?", "%#{search_term}%", "%#{search_term}%")
  render :index
end


end
