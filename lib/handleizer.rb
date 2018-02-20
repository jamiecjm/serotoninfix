module Handleizer

	extend ActiveSupport::Concern

	included do
		before_save :generate_handle
	end

	def generate_handle
		if self.handle.nil?
			begin
				reference = self.name 
			rescue
				reference = self.title
			end
			@resources = self.class.where(handle: reference.parameterize)
			if @resources.blank?
				self.handle = reference.parameterize
			else
				self.handle = reference.parameterize + "-#{@resources.length}"
			end
		end
	end
end