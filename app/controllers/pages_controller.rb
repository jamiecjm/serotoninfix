class PagesController < ApplicationController

	def show
		@page = Page.find_by(handle: params[:id])
		if @page.nil?
			raise ActionController::RoutingError.new('Page Not Found')
		end
	end

end
