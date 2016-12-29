class ProjectsController < ApplicationController

 def index
   @projects = Project.all
 end

 def new
   @project = Project.new
 end

 def create
   @project = Project.create(project_params(:title, :description, :owner, :owner_age))
   redirect_to projects_path
 end

 def edit
   @project = Project.find(params[:id])
 end

 def update
   @project = Project.find(params[:id])
   @project.update(project_params(:title, :description, :owner, :owner_age))
   redirect_to project_path(@project)
 end

 def destroy
   @project = Project.find(params[:id])
   @project.destroy
   redirect_to projects_path
 end

 def show
   @project = Project.find(params[:id])
 end

 private

 def project_params(*args)
   params.require(:project).permit(*args)
 end

end
