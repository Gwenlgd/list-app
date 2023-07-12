class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.references :user, null: false, foreign_key: true
      t.string :list_name
      t.string :description
      t.date :end_date
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
