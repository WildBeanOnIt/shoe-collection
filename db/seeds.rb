# creating owner info.

julio = Owner.create(username: "Joker", email: "firstTest@gmail.com", password_digest: "testone")
lunatwo = Owner.create(username: "LunaTwo", email: "LunaTwo@gmail.com", password_digest: "LunaTesttwo")

# creating shoes info.

Shoe.create(footware: "Nike Dunk Low Panda", owner_id: julio.id)
Shoe.create(footware: "VaporMax Plus", owner_id: lunatwo.id)