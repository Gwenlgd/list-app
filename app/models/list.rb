class List < ApplicationRecord
  belongs_to :user
  # a checker pour item? plutôt has many item
  belongs_to :item

  validates :list_name, presence: true
  validates :description, acceptance: true
  validates :end_date, presence: true
end
