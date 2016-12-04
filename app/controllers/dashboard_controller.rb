class DashboardController < ApplicationController
  def index
    @pages = Page.all
  end
  def coursesedit

    @pages = Page.all
  end
end
