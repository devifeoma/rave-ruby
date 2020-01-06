require_relative "base/base.rb"
require 'json'

class VirtualCard < Base

    def create_virtual_card(data)

        base_url = rave_object.base_url
        data.merge!({"seckey" => rave_object.secret_key.dup})
        payload = data.to_json

        response = post_request("#{base_url}#{BASE_ENDPOINTS::VIRTUAL_CARD_ENDPOINT}/new", payload) 

        return handle_virtual_card(response)

    end

    def list_virtual_card(data)

        base_url = rave_object.base_url
        data.merge!({"seckey" => rave_object.secret_key.dup})
        payload = data.to_json

        response = post_request("#{base_url}#{BASE_ENDPOINTS::VIRTUAL_CARD_ENDPOINT}/search", payload)

        return handle_virtual_card(response)

    end
    
end