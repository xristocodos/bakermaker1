class RemoveExtrasFromIngredients < ActiveRecord::Migration[5.0]
  def change
    remove_column :ingredients, :pkg_cost
    remove_column :ingredients, :pkg_merchant
    remove_column :ingredients, :last_bought
  end
end
