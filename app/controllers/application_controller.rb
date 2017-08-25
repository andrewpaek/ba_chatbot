class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def home
    render html: "hello world"
  end

  def webhook
    render html: "webhook successful"
  end
end
