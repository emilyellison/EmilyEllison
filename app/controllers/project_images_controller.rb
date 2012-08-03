class ProjectImagesController < ApplicationController
  
  before_filter :ensure_administrator
  
  def new
    @project_image = ProjectImage.new
  end
  
  def create
    @project_image = ProjectImage.new(params[:project_image])
    if @project_image.save
      flash[:success] = 'Congrats! Your image has been created successfully!'
      redirect_to projects_url
    else
      render :new
    end
  end
  
  def edit
    @project_image = ProjectImage.find(params[:id])
  end
  
  def update
    @project_image = ProjectImage.find(params[:id])
    if @project_image.update_attributes(params[:project_image])
      flash[:success] = 'Congrats! Your image has been successfully updated!'
      redirect_to projects_url
    else
      render :edit  
    end
  end
  
  def destroy
    @project_image = ProjectImage.find(params[:id])
    @project_image.destroy
    flash[:success] = 'Your project has been successfully destroyed.'
    redirect_to projects_url
  end
  
end