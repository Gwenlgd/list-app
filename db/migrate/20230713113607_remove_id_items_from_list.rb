class RemoveIdItemsFromList < ActiveRecord::Migration[7.0]
  def change
    remove_column :lists, :item_id, :bigint
  end
end
