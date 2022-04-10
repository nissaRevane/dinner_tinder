class CreateUserIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :user_ingredients do |t|
      t.string :quantity
      t.belongs_to :ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
