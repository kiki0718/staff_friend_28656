class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name,            null: false, default: ""
      t.string :number,          null: false, default: ""
      t.string :staff, default: ""
      t.text   :info
      t.text   :favorite_goods
      t.text   :dislike_goods
      
      t.text   :tolk
      t.string :sample
      t.timestamps
    end
  end
end
