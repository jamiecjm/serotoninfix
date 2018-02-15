class Page < ApplicationRecord
	before_save :generate_handle

	def generate_handle
		@pages = Page.where(handle: title.parameterize)
		if @pages.blank?
			self.handle = title.parameterize
		else
			self.handle = title.parameterize + "-#{@pages.length}"
		end
	end
end
