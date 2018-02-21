class BlogPost < ApplicationRecord
	include Handleizer

	belongs_to :blog

	mount_uploader :cover_photo, PhotoUploader

end
