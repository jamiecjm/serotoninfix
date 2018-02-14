class CreatePages < ActiveRecord::Migration[5.1]
  def up
    create_table :pages do |t|
    	t.string	:title
    	t.text	:content
      t.timestamps
    end
  end

  def down
  	drop_table :pages
  end
  
end
