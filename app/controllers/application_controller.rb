class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :get_title

  def get_title
  	@path = request.fullpath.split('/').last
  	if @path
  		@title = "#{@path.gsub('-',' ').capitalize} | Serotonin Fix"
  	else
  		@title = 'Serotonin Fix'
  	end
  end

end
