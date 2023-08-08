class Item < ApplicationRecord
  has_many :reports
  has_many :lists, through: :reports
end
