require_relative "base/bill_payment_base.rb"
require 'json'
class BillPayment < BillPaymentBase
    # method for bills categories
    def bills_categories(data)
        base_url = rave_object.base_url
        data.merge!({"seckey" => rave_object.secret_key.dup})
        required_parameters = ["service", "service_method", "service_version", "service_channel"]
        check_passed_parameters(required_parameters, data)
        payload = data.to_json
        response = post_request("#{base_url}#{BASE_ENDPOINTS::BILL_PAYMENTS_ENDPOINT}", payload) 
        return handle_bill_payment(response)
    end
    def fly_buy(data)
        base_url = rave_object.base_url
        data.merge!({"seckey" => rave_object.secret_key.dup})
        payload = data.to_json
        response = post_request("#{base_url}#{BASE_ENDPOINTS::BILL_PAYMENTS_ENDPOINT}", payload) 
        return handle_bill_payment(response)
    end
    def fly_buy_bulk(data)
        base_url = rave_object.base_url
        data.merge!({"seckey" => rave_object.secret_key.dup})
        payload = data.to_json
        response = post_request("#{base_url}#{BASE_ENDPOINTS::BILL_PAYMENTS_ENDPOINT}", payload)
        return handle_bill_payment(response)
    end
end