class ProjectsController < ApplicationController
  
  before_filter :ensure_administrator, only: [ :new, :create, :edit, :update, :destroy ]
  
  def index
    @projects = Project.order('created_at desc').all
  end
  
  def new
    @project = Project.new
  end
  
  def create
    @project = Project.new(params[:project])
    if @project.save
      flash[:success] = 'Your project has been created.'
      redirect_to project_url(@project.id)
    else
      render :new
    end
  end
  
  def show
    @project = Project.find_by_id(params[:id])
  end
  
  def edit
    @project = Project.find_by_id(params[:id])
  end
  
  def update
    @project = Project.find_by_id(params[:id])
    if @project.update_attributes(params[:project])
      flash[:success] = 'Your project has been updated.'
      redirect_to project_url(@project.id)
    else
      render :edit
    end
  end
  
  def destroy
    @project = Project.find_by_id(params[:id])
    @project.destroy
    flash[:success] = 'Your project has been destroyed.'
    redirect_to projects_url
  end
  
end