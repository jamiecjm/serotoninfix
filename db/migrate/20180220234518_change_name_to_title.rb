class ChangeNameToTitle < ActiveRecord::Migration[5.1]
  def up
  	rename_column :blogs, :name, :title
  end

  def down
  	rename_column :blogs, :title, :name
  end
end
