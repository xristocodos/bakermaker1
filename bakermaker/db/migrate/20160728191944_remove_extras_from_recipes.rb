class RemoveExtrasFromRecipes < ActiveRecord::Migration[5.0]
  def change
    remove_column :recipes, :link_url
    remove_column :recipes, :shoutout_to
    remove_column :recipes, :difficulty
    remove_column :recipes, :cost
    remove_column :recipes, :topsecret
  end
end
