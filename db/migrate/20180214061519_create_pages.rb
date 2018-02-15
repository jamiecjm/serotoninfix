class CreatePages < ActiveRecord::Migration[5.1]
  def up
    create_table :pages do |t|
    	t.string	:title, unique: true
    	t.text	:content
      t.string  :handle
      t.timestamps
    end

    add_index :pages, :handle
  end

  def down
  	drop_table :pages
  end
  
end
