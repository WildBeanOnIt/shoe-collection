# We will have some Data for the program to plug in.

# Create 2 Owners
Owner.create(username: "test1", email: "test1@512.com", password: "password")
Owner.create(username: "test2", email: "test12@512.com", password: "password1")

# create Shoes

Shoe.create(content: "Nike Dunk Pandas", owner_id: julio.id)

# use AR pre-associate data:
# tita.shoes.create(content: "AF1")

# tita.shoes.build(content: "Nike Vapor Max Plus")
# tita.save
