class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.string   :name
      t.decimal  :pkg_cost
      t.string   :pkg_merchant
      t.integer  :recipe_id
      t.integer  :user_id
      t.datetime :last_bought
      t.timestamps
    end
  end
end
