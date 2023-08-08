class List < ApplicationRecord
  # Enlever user?
  belongs_to :user

  has_many :reports, inverse_of: :lists
  has_many :items, through: :reports
  accepts_nested_attributes_for :reports, reject_if: proc { |attr| attr[:item_id].blank? }


  # ajouter autre validates?
  validates :name_list, presence: true
  validates :description, presence: true
end
