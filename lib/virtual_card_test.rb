require "./rave_ruby"


# This is a rave object which is expecting public and secret keys
rave = RaveRuby.new("FLWPUBK-c9f3d5a26a9acf8f11c244abb7f29918-X", "FLWSECK-f77295f18f3afca19f85fc1de706725a-X")

# This is used to initiate single transfer
# payload = {
#     "amount" => "100",
#     "currency" => "NGN",
#     "billing_name" => "Mohammed Lawal",
# 	"billing_address" => "DREAM BOULEVARD",
# 	"billing_city" => "ADYEN",
# 	"billing_state" => "NEW LANGE",
# 	"billing_postal_code" => "293094",
# 	"billing_country" => "NG"
# }

card = VirtualCard.new(rave)
# create_virtual_card = card.create_virtual_card(payload)

# print create_virtual_card


# Payload for print virtual_card
payload = {
    "page" => "1"
}


list_virtual_card = card.list_virtual_card(payload)
print list_virtual_card