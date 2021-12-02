Audition.destroy_all
Role.destroy_all


puts "SEEDING AUDITIONS"


    Role.create(character_name: "Spider-Man")
    Role.create(character_name: "Bat-Man")
    Role.create(character_name: "Hulk")


10.times do 
    Audition.create(actor: Faker::Name.name, location: Faker::Address.full_address, phone: 3333333333, role: Role.all.sample)
end
