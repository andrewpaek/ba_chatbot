require 'net/http'
require 'uri'
require 'json'

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def home
    render html: "hello world"
  end

  def webhook
    render html: params["hub.challenge"]
  end
end
