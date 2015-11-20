class Product < ActiveRecord::Base
  belongs_to :supplier

  def self.get_discounted
    Product.where("price < ?", 50)
  end

  def sale_message
    if price < 50
      "Discount Item!"
    else
      "On Sale!"
    end
  end

  def show
    if params[:id] = "random"
      @taco = Product.all.sample
    else
      @taco = Product.find_by(id: params[:id])
    end
  end

  def tax
    (price * 0.09).round(2)
  end

  def total
    price + tax
  end

end
