class ProjectsController < ApplicationController

  def index 
    @project = Project.new
  end

  def new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      flash[:notice] = 'Project has been created.'
      redirect_to @project
    else
      # Noting me brew
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  private

  def project_params
    params.require(:project).permit(:name, :description)
  end

end
