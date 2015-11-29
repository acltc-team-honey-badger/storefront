class Order < ActiveRecord::Base
  belongs_to :product
  belongs_to :user

  validates :user, :product, presence: true

  validate :quantity_must_be_5


  def quantity_must_be_5
    if quantity != 5
      errors.add(:quantity, "Hey, you need to only input 5, then it will be hella good.")
    end
  end


end
