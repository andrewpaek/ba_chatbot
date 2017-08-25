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

  # def receive_message
  #   data = params.body
  #   if data.object == 'page'
  #     data.entry.each do |entry|
  #       pageID = entry.id
  #       timeOfEvent = entry.time
  #     end
  #     entry.messaging.each do |event|
  #       if event.message
  #         blah(event)
  #       else
  #         raise "undefined message"
  #       end
  #     end
  #     render status: 200
  #   end
  # end

  # def blah(event)
  #   sender_id = event.sender.id
  #   message = event.message
  #   message_text = message.text
  #   send_message(message_text, sender_id)
  # end

  # def send_message(txt, sender_id)
  #   message_data = {
  #     recipient: {
  #       id: sender_id
  #     },
  #     message: {
  #       text: txt
  #     }
  #   }
  #   send_api(message_data)
  # end

  # def send_api(message_data)
  #   uri = URI.parse('https://graph.facebook.com/v2.6/me/messages')
    
  # end
end
