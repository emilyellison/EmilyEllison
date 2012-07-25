class OverviewController < ApplicationController
  
  def index
    @blog_posts = BlogPost.order('created_at desc').limit(5).all
  end
  
  def about
    
  end
  
end