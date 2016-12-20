class Admin::TagsController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "admin"
  def new
    @tag = Tag.new
    @tags = Tag.all
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      if params[:tag][:course_id] == nil
        redirect_to edit_admin_page_course_path(params[:tag][:page_id], params[:tag][:course_id])
      end
      redirect_to new_admin_page_course_path(params[:tag][:page_id])
    else
      render 'new'
      redirect_to :back
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
