class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end
  def show
    @course = Course.find(params[:id])
  end
  def new
    @course = Course.new
    @page = Page.find(params[:page_id])
  end
  def create
    @page = Page.find(params[:page_id])
    @course = @page.courses.create(course_params)
    if @course.save
      redirect_to dashboard_coursesedit_path
    else
      render 'new'
    end
  end
  def destroy
    @course = Course.find(params[:id])
    @course.destroy

    redirect_to dashboard_coursesedit_path
  end

  private
  def course_params
    params.require(:course).permit(:Name, :tag_ids => [])
  end
end
