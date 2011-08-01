class NewsController < ApplicationController
  inherit_resources
  include InheritedResources::DSL

  before_filter :authenticate

  layout "admin"

  respond_to :html

  protect_from_forgery


  protected

  # Authenticate with HTTP Basic Auth
  def authenticate
    authenticate_or_request_with_http_basic("algo") do |username, password|
      username == "dupa" && password == "dupa"
    end
  end
end
