class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: "jakub", password: "jakub"
  def index
    @pages = Page.all
    @courses = Course.all
  end
end
