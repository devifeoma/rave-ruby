require "./rave_ruby"


# This is a rave object which is expecting public and secret keys
rave = RaveRuby.new("FLWPUBK-c9f3d5a26a9acf8f11c244abb7f29918-X", "FLWSECK-f77295f18f3afca19f85fc1de706725a-X")

# This is used to initiate single transfer
payload = {
    "seckey" => "FLWSECK-f77295f18f3afca19f85fc1de706725a-X",
    "page" => "1",
}

settlement = Settlement.new(rave)
list_settlement = settlement.list_settlement(payload)

print settlement