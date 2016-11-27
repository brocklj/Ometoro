class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end
  def show
    @course = Course.find(params[:id])
  end
  def new
    @courses = Course.new
  end

  private
  def course_params
    params.require(:course).permit(:Name)
  end
end
