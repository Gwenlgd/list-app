class ChangeNameColumns < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :surname, :username
  end
end
