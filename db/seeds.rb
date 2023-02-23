Role.destroy_all
#Role.reset_pk_sequence
Audition.destroy_all
#Audition.reset_pk_sequence


Role.create(character_name: "James Bond")
Role.create(character_name: "Batman")

Audition.create(actor: "Sean Connery", location: "England", phone: 5555555, hired: false, role_id: 1)
Audition.create(actor: "Michael Moore", location: "England", phone: 4444444, hired: false, role_id: 1)
Audition.create(actor: "Pierce Brosnan", location: "England", phone: 3333333, hired: false, role_id: 1)
Audition.create(actor: "Michael Keeton", location: "Hollywood", phone: 2222222, hired: false, role_id: 2)
Audition.create(actor: "Ben Afleck", location: "Hollywood", phone: 1111111, hired: false, role_id: 2)
Audition.create(actor: "Christian Bales", location: "Hollywood", phone: 6666666, hired: false, role_id: 2)

puts "🌱 🌱 🌱  SEEDED 🌱 🌱 🌱 🌱 "