class List < ApplicationRecord
  belongs_to :user

  validates :list_name, presence: true
  validates :description, acceptance: true
  validates :end_date, presence: true
end
