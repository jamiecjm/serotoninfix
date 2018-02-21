module Handleizer

	extend ActiveSupport::Concern

	included do
		before_save :generate_handle
	end

	def generate_handle
		if self.title_changed?
			@resources = self.class.where(handle: title.parameterize)
			if @resources.blank?
				self.handle = title.parameterize
			else
				self.handle = title.parameterize + "-#{@resources.length}"
			end
		end
	end
end