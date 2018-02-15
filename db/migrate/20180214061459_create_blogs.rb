class CreateBlogs < ActiveRecord::Migration[5.1]
  def up
    create_table :blogs do |t|
    	t.string	:title, unqiue: true
    	t.string	:cover_photo
    	t.text	:content
    	t.boolean	:published?
    	t.datetime	:published_at

      t.timestamps
    end
  end

  def down
  	drop_table :blogs
  end
  
end
