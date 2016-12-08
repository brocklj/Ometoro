class Admin::CoursesController < ApplicationController
  http_basic_authenticate_with name: "jakub", password: "jakub"
  def index
    @pages = Page.all
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
    @page = Page.find(params[:page_id])
    if @course.update(course_params)
      redirect_to page_course_path
    else
      render 'edit'
    end
  end

  def create
    @page = Page.find(params[:page_id])
    @course = @page.courses.create(course_params)
    if @course.save
      redirect_to admin_courses_path
    else
      render 'new'
    end
  end
  def destroy
    @course = Course.find(params[:id])
    @course.destroy

    redirect_to admin_courses_path
  end

  private
  def course_params
    params.require(:course).permit(:Name, :body, :page_id, :tag_ids => [])
  end
end
