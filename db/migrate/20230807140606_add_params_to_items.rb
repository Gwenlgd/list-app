class AddParamsToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :name, :string
    add_column :items, :item_description, :string
    add_column :items, :quantity, :string
    add_column :items, :price, :string
    add_column :items, :item_category, :string
    add_column :lists, :list_category, :string
  end
end
