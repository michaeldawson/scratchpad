class RecipeIngredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient

  validates :recipe, presence: true
  validates :ingredient, presence: true
  validates :measurement, presence: true
  validates :quantity, presence: true
end
