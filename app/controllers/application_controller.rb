class ApplicationController < ActionController::Base
  before_action :set_body_class

  def set_body_class
    @body_class = 'home'
  end

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end
end
