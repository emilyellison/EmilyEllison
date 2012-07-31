require 'open-uri'

class OverviewController < ApplicationController
  
  def index
    @blog_posts = BlogPost.order('created_at desc').limit(5).all
    @projects = Project.order('created_at desc').limit(5).all
  end
  
  def about
    @tweet = JSON.parse(open('http://search.twitter.com/search.json?q=emilyellison986&rpp=5&include_entities=true&result_type=mixed').read)['results'][0]
  end
  
end