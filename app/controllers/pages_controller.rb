class PagesController < ApplicationController
  def new

  end
  def create
    @page = Page.new(params[:page])
    @page.save
    redirect_to @page
  end
end
