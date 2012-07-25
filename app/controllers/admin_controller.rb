class AdminController < ApplicationController
  
  before_filter :ensure_administrator
  
  def index
    
  end
  
end