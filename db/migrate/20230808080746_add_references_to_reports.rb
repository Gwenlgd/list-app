class AddReferencesToReports < ActiveRecord::Migration[7.0]
  def change
    add_reference :reports, :list, foreign_key: true
    add_reference :reports, :item, foreign_key: true
  end
end
