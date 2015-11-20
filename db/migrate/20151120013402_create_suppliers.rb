class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :phone
      t.string :email

      t.timestamps null: true
    end
    add_column :products, :supplier_id, :integer

  end
end
