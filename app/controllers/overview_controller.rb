require 'open-uri'

class OverviewController < ApplicationController
  
  def index
    @blog_posts = BlogPost.order('created_at desc').limit(3).all
    @projects = Project.order('created_at desc').limit(4).all
  end
  
  def about

  end
  
end