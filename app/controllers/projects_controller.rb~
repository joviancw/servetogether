class ProjectsController < ApplicationController
    def show
        @project = Project.find(params[:id])
    end

    def index
        @projects = Project.all
    end

    def create
        @project = Project.new(post_params)
        @project.save
        redirect_to @project
    end
    private
     def post_params
        params.require(:project).permit(:title, :description)
     end
end
