class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end
  def show
    @course = Course.find(params[:id])
  end
  def new
    @page = Page.find(params[:page_id])
    @course = @page.courses.new
  end
  def edit
    @page = Page.find(params[:page_id])
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])

    if @course.update(course_params)
      redirect_to @course
    else
      render 'edit'
    end
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
