class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "admin"
  def index
    @pages = Page.all
    @courses = Course.all
  end
end
