class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :alias
      t.string :link_url
      t.string :shoutout_to
      t.integer :difficulty
      t.text :recipe_content
      t.decimal :cost
      t.string :submitter
      t.boolean :topsecret
      t.datetime :submitted_on
      t.timestamps
    end
  end
end
