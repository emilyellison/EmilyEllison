class SessionsController < ApplicationController
  
  def new
    
  end
  
  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:uid] = @user.id
      flash[:success] = "Welcome back, #{@user.name}!"
      redirect_to admin_url
    else
      flash[:error] = 'Invalid e-mail/password.'
      render :new
    end
  end
  
  def destroy
    reset_session
    flash[:notice] = 'Come back soon!'
    redirect_to root_url
  end
  
end