class Product < ActiveRecord::Base

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

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

end
