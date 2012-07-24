class InquiriesController < ApplicationController
  
  def new
    @inquiry = Inquiry.new
  end
  
  def create
    @inquiry = Inquiry.new(params[:inquiry])
    if @inquiry.save
      flash[:success] = 'Your message has been sent!'
      ContactMe.contact(@inquiry).deliver
      redirect_to new_inquiry_url
    else
      render :new
    end
  end
  
end