require './rave_ruby'
require 'securerandom'
# This is a rave object which is expecting public and secret keys
rave = RaveRuby.new("FLWPUBK-c9f3d5a26a9acf8f11c244abb7f29918-X", "FLWSECK-f77295f18f3afca19f85fc1de706725a-X")
payload ={
  "service" => "bills_categories",
  "service_method" => "get",
  "service_version" => "v1",
  "service_channel" => "rave",
  "service_payload" => ""
}
bills = BillPayment.new(rave)
result = bills.bills_categories(payload)
print result

#fly buy

# payload = {
#   "service" =>  "fly_buy",
#   "service_method" =>  "post",
#   "service_version" => "v1",
#   "service_channel" => "rave",
#   "service_payload" => {
#     "Country" => "NG",
#     "CustomerId" => "+23490803840303",
#     "Amount" => 100,
#     "RecurringType" => 0,
#     "IsAirtime" => true,
#     "BillerName" =>  "AIRTIME"
# }

# }
# result = bills.fly_buy(payload)
# print result 

#fly buy bulk
# payload = {
#     "service" => "fly_buy_bulk",
#   "service_method" => "post",
#   "service_version" => "v1",
#   "service_channel" => "rave",
#   "service_payload" => {
#     "BatchReference" => "batch-rave-150928302799933922",
#     "CallBackUrl" => "https://rave-webhook.herokuapp.com/newregistration",
#     "Requests" => [
#       {
#         "Country" => "NG",
#         "CustomerId" => "+23490803840303",
#         "Amount" => 500,
#         "RecurringType" => 0,
#         "IsAirtime" => true,
#         "BillerName" => "AIRTIME",
#         "Reference" => "9300049404444"
#       },
#       {
#         "Country" => "GH",
#         "CustomerId" => "+233276081163",
#         "Amount" => 10,
#         "RecurringType" => 0,
#         "IsAirtime" => true,
#         "BillerName" => "AIRTIME",
#         "Reference" => "9300049405555"
#       },
#       {
#         "Country" => "US",
#         "CustomerId" => "+190830030",
#         "Amount" => 20,
#         "RecurringType" => 0,
#         "IsAirtime" => true,
#         "BillerName" => "AIRTIME",
#         "Reference" =>"9300049406666"
#       }
#     ]
#   }
# }

# # result = bills.fly_buy_bulk(payload)
# # print result 

# result = bills.fly_buy_bulk(payload)
# print result 