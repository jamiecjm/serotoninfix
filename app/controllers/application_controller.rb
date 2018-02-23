class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :get_title
  before_action :get_controller_action

  def get_title
  	@path = request.fullpath.split('/').last
  	if @path
  		@title = "#{@path.gsub('-',' ').capitalize} | Serotonin Fix"
  	else
  		@title = 'Serotonin Fix'
  	end
  end

  def get_controller_action
    @page_id = "#{params[:controller]}-#{params[:action]}"
  end

end
