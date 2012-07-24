class BlogPostsController < ApplicationController
  
  def index
    @blog_posts = BlogPost.all
  end
  
  def new
    @blog_post = BlogPost.new
  end
  
  def create
    @blog_post = BlogPost.new(params[:blog_post])
    if @blog_post.save
      flash[:success] = 'Your blog post has been created!'
      redirect_to blog_post_url(@blog_post.id)
    else
      render new
    end
  end
  
  def show
    @blog_post = BlogPost.find_by_id(params[:id])
  end
  
  def edit
    @blog_post = BlogPost.find_by_id(params[:id])
  end
  
  def update
    @blog_post = BlogPost.find_by_id(params[:id])
    if @blog_post.update_attributes(params[:blog_post])
      flash[:success] = 'Your blog post has been updated!'
      redirect_to blog_post_url(@blog_post.id)
    else
      render :new
    end
  end
  
  def destroy
    @blog_post = BlogPost.find_by_id(params[:id])
    @blog_post.destroy
    flash[:success] = 'Your blog post has been destroyed.'
    redirect_to blog_posts_url
  end
  
end