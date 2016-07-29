class AddSubmittedByIdToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :submitted_by_id, :integer
    remove_column :recipes, :submitter
  end
end
