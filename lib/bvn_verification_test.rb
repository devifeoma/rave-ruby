require "./rave_ruby"


# This is a rave object which is expecting public and secret keys
rave = RaveRuby.new("FLWPUBK-c9f3d5a26a9acf8f11c244abb7f29918-X", "FLWSECK-f77295f18f3afca19f85fc1de706725a-X")


bvn_verification =  BvnVerification.new(rave)
bvn = bvn_verification.bvn_validation("12345678901")

print bvn