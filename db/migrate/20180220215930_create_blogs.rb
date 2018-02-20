class CreateBlogs < ActiveRecord::Migration[5.1]
  def up
    create_table :blogs do |t|
    	t.string	:name
    	t.string	:handle

      t.timestamps
    end

    add_index :blogs, :name, :unique => true
    add_index :blogs, :handle, :unique => true
  end

  def down
  	drop_table :blogs
  end

end
