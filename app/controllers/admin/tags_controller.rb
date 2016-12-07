class Admin::TagsController < ApplicationController
  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      redirect_to admin_courses_path
    else
      render 'new'
    end
  end

  private
  def tag_params
    params.require(:tag).permit(:name, :text)
  end
end
