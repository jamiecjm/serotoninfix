class CreateNavigations < ActiveRecord::Migration[5.1]
  def up
    create_table :navigations do |t|
    	t.integer	:page_id
    	t.string	:order

      t.timestamps
    end
  end

  def down
  	drop_table :navigations
  end
  
end
