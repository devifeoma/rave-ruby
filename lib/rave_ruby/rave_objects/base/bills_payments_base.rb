require_relative "base.rb"
class BillPaymentBase < Base
    def handle_bill_payment(response)
        bill_payments = response
        if bill_payments.code == 200
            response = {"error" => false, "returned_data" => JSON.parse(bill_payments.body)}
            return response
        else
            response = {"error" => true, "returned_data" => JSON.parse(bill_payments.body)}
            raise InitiateTransferError, response
        end
    end
end