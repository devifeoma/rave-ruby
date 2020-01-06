require_relative "base/base.rb"
require 'json'

class BvnVerification < Base

    def bvn_validation(bvn)

        base_url = rave_object.base_url

        response = get_request("#{base_url}v2/kyc/bvn/#{bvn}", {"seckey" => rave_object.secret_key.dup}) 

        return handle_bvn_verification(response)

    end

end