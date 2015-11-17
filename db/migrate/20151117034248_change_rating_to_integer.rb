class ChangeRatingToInteger < ActiveRecord::Migration
  def change
    change_column :products, :rating, :integer
  end
end
