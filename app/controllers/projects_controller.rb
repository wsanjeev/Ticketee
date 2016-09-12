class ProjectsController < ApplicationController
def index
@projects=Project.all
end

def new
@project=Project.new
end

def create

@project=Project.new(project_params)

params
{
}

if @project.save

flash[:notice]="Project has been created"
redirect_to @project

else

#NOTHING YET
end
end

def show
@project=Project.find(params[:id])
end

def edit
@project = Project.find(params[:id])
end

def destroy
@project = Project.find(params[:id])
@project.destroy

flash[:notice]="Project has been deleted"
redirect_to projects_path
end

private

def project_params
params.require(:project).permit(:name,:description)
end
end

