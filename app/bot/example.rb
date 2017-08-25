require 'facebook/messenger'

include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe(ENV['ACCESS_TOKEN'])

Bot.on :message do |message|
  message.reply(text: 'Hello, human!')
end