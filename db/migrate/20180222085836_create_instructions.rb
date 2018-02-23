class CreateInstructions < ActiveRecord::Migration[5.1]
  def up
    create_table :instructions do |t|
    	t.integer	:recipe_id
    	t.text	:description
    	t.integer	:order
      t.timestamps
    end

    add_index :instructions, :recipe_id
  end

  def down
  	drop_table :instructions
  end
end
