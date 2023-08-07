class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.string :name_list
      t.string :description

      t.timestamps
    end
  end
end