require 'open-uri'

class OverviewController < ApplicationController
  
  def index
    @blog_posts = BlogPost.order('created_at desc').limit(3).all
    @projects = Project.order('created_at desc').limit(4).all
  end
  
  def about
    @tweet = JSON.parse(open('https://api.twitter.com/1/statuses/user_timeline.json?include_entities=true&include_rts=true&screen_name=emilyellison986&count=1').read)[0]
  end
  
end