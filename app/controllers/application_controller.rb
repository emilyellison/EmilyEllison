class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :find_current_location
  
  def find_current_location
    @current_location = request.path_parameters
    controller = @current_location[:controller]
    action = @current_location[:action]
    if controller == 'overview'
      if action == 'index'
        @home_page = 'active'
      elsif action == 'about'
        @about_page = 'active'
      end
    elsif controller == 'inquiries' && action == 'new'
      @hire_page = 'active'
    end
  end
end
