class Admin::TagsController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "admin"
  def index
    @tag = Tag.new
    @tags = Tag.all
  end


  def new
    @tag = Tag.new
    @tags = Tag.all
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      if params[:tag][:page_id] != ""
        redirect_to edit_admin_page_course_path(params[:tag][:page_id], params[:tag][:course_id])
      elsif params[:tag][:page_id] != ""
        redirect_to new_admin_page_course_path(params[:tag][:page_id])
        else
          redirect_to admin_courses_path
      end

    else
      render 'admin/courses/new'
    end
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy

    redirect_to :back
  end

  private
  def tag_params
    params.require(:tag).permit(:name, :text)
  end
end
