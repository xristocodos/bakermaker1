class CreateProportions < ActiveRecord::Migration[5.0]
  def change
    create_table :proportions do |t|
      t.string :amount
      t.belongs_to :recipe, foreign_key: true
      t.belongs_to :ingredient, foreign_key: true

      t.timestamps
    end
  end
end
