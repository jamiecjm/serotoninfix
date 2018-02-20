class BlogPost < ApplicationRecord
	belongs_to :blog

	include Handleizer
end
