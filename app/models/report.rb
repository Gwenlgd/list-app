class Report < ApplicationRecord
  belongs_to :list, inverse_of: :reports
  belongs_to :item
end
