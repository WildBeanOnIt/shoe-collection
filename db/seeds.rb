# Owners info
julio = Owner.create(username: "Julio512", email: "email512.com", password: "juliotest")
tony = Owner.create(username: "tonyTest", email: "test2.com", password: "tonytest2")

# Shoes info
Shoe.create(footware: "Nike dunks Low", condition: "New", owner_id: julio.id)
julio.shoes.create(footware: "AF1 Low", condition: "Used")
