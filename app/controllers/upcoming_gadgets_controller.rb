require 'httparty'
require 'json'
class UpcomingGadgetsController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => [:create, :update]
    def create
      @upcoming_gadget = UpcomingGadget.new(upcoming_gadget_params)

      if @upcoming_gadget.save
        notify_third_party_apis('create', @upcoming_gadget)
      else
      end
    end

    def update
      @upcoming_gadget = UpcomingGadget.find(params[:id])

      if @upcoming_gadget.update(upcoming_gadget_params)
        notify_third_party_apis('update', @upcoming_gadget)
      else
      end
    end

    private

    def notify_third_party_apis(action, upcoming_gadget)
      third_party_endpoints = [
        ENV['third_party_api_1'],
        ENV['third_party_api_2']
      ]

      third_party_endpoints.each do |endpoint|
        begin
          WebhookWorker.new.perform(endpoint, upcoming_gadget)
        rescue UpcomingGadgets::AuthorizationFailedError
        end
      end
    end

    def upcoming_gadget_params
      params.require(:upcoming_gadget).permit(:product_type, :brand_name, :price, :description, :expected_launching_date)
    end

end
