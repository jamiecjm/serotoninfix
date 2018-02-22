class BlogPost < ApplicationRecord
	include Handleizer

	belongs_to :blog

	mount_uploader :cover_photo, PhotoUploader

	before_save :set_published_date

	acts_as_ordered_taggable

	def set_published_date
		if published?
			self.published_at = Time.now if self.published_at.nil?
		else
			self.published_at = nil
		end
	end

end
