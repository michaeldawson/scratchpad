require 'rails_helper'

describe Recipe do
  # This is actually the default for a model spec, that is, the subject is a new instance of the
  # described class
  subject { described_class.create! }

  it "has associations defined correctly" do
    # Let's make a recipe and fill it up with ingredients!
    tomato = Ingredient.create!(name: "tomato", allergy: false)
    potato = Ingredient.create!(name: "potato", allergy: false)
    shellfish = Ingredient.create!(name: "shellfish", allergy: true)

    subject.recipe_ingredients.create!(ingredient: tomato, quantity: 6, measurement: "cups" )

    # We can push straight in, but not if we need extra data on the recipe ingredients model
    # subject.ingredients << tomato

    puts subject.recipe_ingredients

    # expect(subject.recipe_ingredients.count).to eq(5)
  end
end
