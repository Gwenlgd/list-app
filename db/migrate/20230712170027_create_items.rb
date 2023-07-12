class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.string :description
      t.integer :price
      t.integer :quantity
      t.boolean :statut

      t.timestamps
    end
  end
end
