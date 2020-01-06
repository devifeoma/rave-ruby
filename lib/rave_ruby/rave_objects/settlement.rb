require_relative "base/base.rb"
require 'json'

class Settlement < Base

    def list_settlement(data)

        base_url = rave_object.base_url
        data.merge!({"seckey" => rave_object.secret_key.dup})

        payload = data.to_json

        response = get_request("#{base_url}#{BASE_ENDPOINTS:: SETTLEMENT_ENDPOINT}", payload) 
        return handle_settlement(response)

    end

end