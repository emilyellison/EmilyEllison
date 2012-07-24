class OverviewController < ApplicationController
  
  def index
    @blog_posts = BlogPost.all
  end
  
  def about
    
  end
  
end