require "./rave_ruby"


# This is a rave object which is expecting public and secret keys
rave = RaveRuby.new("FLWPUBK-c9f3d5a26a9acf8f11c244abb7f29918-X", "FLWSECK-f77295f18f3afca19f85fc1de706725a-X")

# This is used to initiate single transfer
# payload = {
#     "amount" => 100,
#     "currency" => "NGN",
#     "country" => "NG",
#     "email" => "user@example.com",
#     "txRef" => "bank-transfer-15610580i50398",
#     "payment_type" => "banktransfer",
#     "is_bank_transfer" => true,
#     "firstname" => "Flutterwave",
#     "lastname" => "Tester"
# }

bank_transfer = BankTransfer.new(rave)
# transfer = bank_transfer.initiate_charge(payload)


verify_transfer = bank_transfer.verify_charge("URF_1576507406184_7328235")
print verify_transfer