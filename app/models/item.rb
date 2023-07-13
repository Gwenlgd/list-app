class Item < ApplicationRecord
  has_many :list

  validates :name, presence: true
  validates :category, acceptance: true
  validates :description, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
end
