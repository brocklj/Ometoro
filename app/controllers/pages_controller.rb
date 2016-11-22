class PagesController < ApplicationController
  def index
    @pages = Page.all
  end
  def show
    @page = Page.find(params[:id])
  end
  def new

  end
  def create
    @page = Page.new(page_params)
    @page.save
    redirect_to pages_path
  end
end

private
def page_params
  params.require(:page).permit(:title, :test)
end