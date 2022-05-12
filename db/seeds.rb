# creating owner info.

julio = Owner.create(username: "Joker", email: "firstTest@gmail.com", password: "testone")
lunatwo = Owner.create(username: "LunaTwo", email: "LunaTwo@gmail.com", password: "LunaTesttwo")
Owner.create(username: "Test512", email: "512@test.com", password: "hello")
# creating shoes info.

Shoe.create(footware: "Nike Dunk Low Panda", owner_id: julio.id)
Shoe.create(footware: "VaporMax Plus", owner_id: lunatwo.id)