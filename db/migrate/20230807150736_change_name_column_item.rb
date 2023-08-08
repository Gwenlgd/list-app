class ChangeNameColumnItem < ActiveRecord::Migration[7.0]
  def change
    rename_column :items, :name, :name_item
  end
end
