# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# http://www.marthastewart.com/344840/soft-and-chewy-chocolate-chip-cookies
chocochips_tho = Recipe.create!(
  title: "Fire Chocochip Cookielopolouses",
  alias: "Baby Carrots",
  shoutout_to: "Xristo",
  difficulty: 2,
  recipe_content: "make all the things in the bowl with the stuff and then mix and bake",
  cost: 28.77,
  submitter: "Xristo",
  topsecret: false
)



#INGREDIENTS
chocochips_tho.ingredients.create!(
  name: "unsalted butter",
  pkg_cost: 4.48,
  pkg_merchant: "walmart"
)
chocochips_tho.ingredients.create!(
  name: "goldmedal all-purpose flower",
  pkg_cost: 2.49,
  pkg_merchant: "walmart"
)
chocochips_tho.ingredients.create!(
  name: "domino granulated sugar",
  pkg_cost: 3.65,
  pkg_merchant: "walmart"
)
chocochips_tho.ingredients.create!(
  name: "domino lightbrown sugar",
  pkg_cost: 2.08,
  pkg_merchant: "walmart"
)
chocochips_tho.ingredients.create!(
  name: "morton iodized salt",
  pkg_cost: 2.44,
  pkg_merchant: "walmart"
)
chocochips_tho.ingredients.create!(
  name: "mccormick pure vanilla extract",
  pkg_cost: 4.04,
  pkg_merchant: "walmart"
)
chocochips_tho.ingredients.create!(
  name: "large eggs",
  pkg_cost: 4.39,
  pkg_merchant: "freshdirect"
)
chocochips_tho.ingredients.create!(
  name: "nestle tollhouse chocolate chips",
  pkg_cost: 2.71,
  pkg_merchant: "walmart"
)
