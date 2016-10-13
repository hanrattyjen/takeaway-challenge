require 'rubygems'
require 'twilio-ruby'
require 'time'

class ConfirmationTextSender

  def send_message(message)

    account_sid = 'xx'
    auth_token = 'xxx'
    @client = Twilio::REST::Client.new account_sid, auth_token

    @message = @client.messages.create(
      to: "+xx",
      from: "+xx",
      body: "Hi from FOOD! Your order has cost £#{message} and will arrive at #{calculate_time}."
    )
  end

  def calculate_time
    delivery_time = Time.now + 30*60
    format_time = delivery_time.strftime("%I:%M%p")
  end
end
