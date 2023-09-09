# require 'http.rb'
require 'httparty'
require 'json'
require 'pry'
class WebhookWorker
  include Sidekiq::Worker

  def perform(endpoint, upcoming_gadget)
    response = HTTParty.post(endpoint, :body =>  {"information"=> upcoming_gadget, "passcode" => 'ABCD@123'}.to_json , :headers => { 'Content-Type' => 'application/json' } )
    # based on response something
    raise UpcomingGadgets::FailedRequestError unless response["status"] == 200
    raise UpcomingGadgets::AuthorizationFailedError unless response["passcode"].match(/_sub/)
  end
end
