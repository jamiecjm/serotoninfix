class CreateIngredients < ActiveRecord::Migration[5.1]
  def up
    create_table :ingredients do |t|
    	t.integer	:recipe_id
    	t.string	:description
    	t.integer	:order
      t.timestamps
    end

    add_index :ingredients, :recipe_id
  end

  def down
  	drop_table :ingredients
  end
end
