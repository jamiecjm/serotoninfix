class Blog < ApplicationRecord
	has_many :blog_posts, :dependent => :destroy

	include Handleizer

end
