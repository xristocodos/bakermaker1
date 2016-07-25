class Recipe < ApplicationRecord
  has_many :proportions
  has_many :ingredients, through: :proportions
  accepts_nested_attributes_for :ingredients, reject_if: :all_blank
end
