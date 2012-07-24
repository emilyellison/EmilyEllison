class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :find_current_location
  before_filter :find_logged_in_user
  
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
    elsif controller == 'blog_posts'
      @blog_page = 'active'
    elsif controller == 'admin'
      @admin_page = 'active'
    end
  end
  
  def find_logged_in_user
    @current_user = User.find_by_id(session[:uid])
  end
end
