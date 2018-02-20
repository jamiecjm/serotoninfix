class CreateBlogPosts < ActiveRecord::Migration[5.1]
  def up
    create_table :blog_posts do |t|
    	t.integer	:blog_id
    	t.string	:title
    	t.text	:content
    	t.string	:cover_photo
    	t.string	:handle
    	t.boolean	:published?
    	t.datetime	:published_at
      t.timestamps
    end

    add_index :blog_posts, :title, :unique => true
    add_index :blog_posts, :handle, :unique => true
    add_index :blog_posts, :blog_id


  end

  def down
  	drop_table :blog_posts
  end

end
