class PagesController < ApplicationController

  before_action :find_web_app

  def search_pages
    @path = @web_application.url
  end

  def about_pages
    @path = @web_application.url + '/about'
    render 'search_pages'
  end

  def version_pages
    @path = @web_application.url + '/version'
    render 'search_pages'
  end

  private

  def find_web_app
    path = "/#{params[:root_path]}"
    @web_application = WebApplication.find_by(path: path)
  end
end
