class RemoveLists < ActiveRecord::Migration[7.0]
  def change
    drop_table(:lists)
  end
end
