class CreateRecipes < ActiveRecord::Migration[5.1]
  def up
    create_table :recipes do |t|
    	t.string	:title
    	t.text	:description
    	t.string	:cover_photo
    	t.string	:handle

      t.timestamps
    end

    add_index :recipes, :title, unique: true
    add_index :recipes, :handle, unique: true
  end

  def down
  	drop_table :recipes
  end
end
