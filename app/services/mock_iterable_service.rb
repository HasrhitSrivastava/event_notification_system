require 'net/http'
require 'uri'
require 'json'
class MockIterableService
    def initialize
      @events = [] # Initialize an empty array to store events
    end

    def create_event(user_id, event_name)
      # @events << { user_id: user_id, event_name: event_name } # Store the event data in the array
      # # Simulate creating an event in iterable.com API
      # payload = {
      #   apiKey: 'YOUR_API_KEY',
      #   userId: user_id,
      #   eventName: event_type
      # }.to_json

      # # Simulate making an HTTP POST request to the iterable.com API
      # uri = URI.parse("https://api.iterable.com/api/events/track")
      # http = Net::HTTP.new(uri.host, uri.port)
      # http.use_ssl = true

      # request = Net::HTTP::Post.new(uri.request_uri)
      # request.body = payload
      # request['Content-Type'] = 'application/json'

      # response = http.request(request)

      # if response.is_a?(Net::HTTPSuccess)
      #   puts "Event #{event_type} created for user #{user_id} in iterable.com"
      #   return true
      # else
      #   puts "Failed to create event #{event_type} for user #{user_id} in iterable.com"
      #   return false
      # end
      puts "Event #{event_name} created for user #{user_id} in iterable.com"
      true # return value indicating success
    end

    def send_email_notification(email)
      # Simulate sending an email notification via iterable.com API
      # payload = {
      #   apiKey: 'YOUR_API_KEY',
      #   recipients: [
      #     { email: email }
      #   ],
      #   # Add other email parameters as needed
      # }.to_json

      # # Simulate making an HTTP POST request to the iterable.com API
      # uri = URI.parse("https://api.iterable.com/api/sendEmail")
      # http = Net::HTTP.new(uri.host, uri.port)
      # http.use_ssl = true

      # request = Net::HTTP::Post.new(uri.request_uri)
      # request.body = payload
      # request['Content-Type'] = 'application/json'

      # response = http.request(request)

      # if response.is_a?(Net::HTTPSuccess)
      #   puts "Email notification sent to #{email} via iterable.com"
      #   return true
      # else
      #   puts "Failed to send email notification to #{email} via iterable.com"
      #   return false
      # end
      puts "Email notification sent to #{email} via iterable.com"
      return true
    end
end
