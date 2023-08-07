class List < ApplicationRecord
  belongs_to :user

  validates :name_list, presence: true
  validates :description, presence: true
end
