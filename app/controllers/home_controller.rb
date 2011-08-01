class HomeController < ApplicationController
  def index
    @news = News.all
  end

  def contact
  end

  def download
  end
end