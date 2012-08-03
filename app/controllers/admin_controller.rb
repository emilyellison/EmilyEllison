class AdminController < ApplicationController
  
  before_filter :ensure_administrator
  
  def index
    @blog_posts = BlogPost.order('created_at desc').all
    @projects = Project.order('created_at desc').all
    @project_images = ProjectImage.order('project_id desc').all
  end
  
end