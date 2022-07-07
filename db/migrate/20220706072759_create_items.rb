class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t| 
      t.integer :category_id,      null: false 
      t.integer :color_id,         null: false 
      t.string :brand,             null: false 
      t.string :size
      t.text :memo 
      t.timestamps
    end
  end
end