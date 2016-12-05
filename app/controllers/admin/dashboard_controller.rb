class Admin::DashboardController < ApplicationController
  def index
    @pages = Page.all
    @courses = Course.all
  end
end
