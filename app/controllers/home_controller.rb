# encoding: utf-8

class HomeController < ApplicationController
  def index
    @news = News.all
  end

  def contact
  end

  def author
  end

  def book
  end

  def process_contact
    ContactMailer.contact_email(params[:name], params[:email], params[:body]).deliver
    redirect_to root_path, :notice => "Wiadomość została wysłana"
  end

  def download
  end
end