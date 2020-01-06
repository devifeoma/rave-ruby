require_relative "base/transfer_base.rb"
require 'json'

class TransferRecipient < TransferBase

    def create_transfer_recipient(data)

        base_url = rave_object.base_url
        data.merge!({"seckey" => rave_object.secret_key.dup})

        payload = data.to_json

        response = post_request("#{base_url}#{BASE_ENDPOINTS::TRANSFER_ENDPOINT}/beneficiaries/create", payload) 
        return handle_transfer_recipient(response)

    end

end