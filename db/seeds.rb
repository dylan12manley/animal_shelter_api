# Shelter.destroy_all

15.times do |s|
  @shelter = Shelter.create!(
    shelter_name: Faker::Address.community,
    city: Faker::Address.city,
    state: Faker::Address.state,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone)

    5.times do |a|
      @shelter.animals.new(
        name: Faker::Creature::Cat.name,
        species: "Cat",
        breed: Faker::Creature::Cat.breed,
        sex: "Female",
        age: rand(14),
        status: "available",
        shelter_id: rand(200))
      end
end

# Animal.destroy_all


  p "Created #{Shelter.count} shelters, and #{Animal.count} animals,"
  # 2.times do
  #   @shelter.animals.new(
  #   name: Faker::Creature::Cat.name,
  #   species: Faker::Creature::Animal.name,
  #   breed: "unknown",
  #   sex: "na",
  #   age: rand(14),
  #   status: "available",
  #   shelter_id: nil)
  #   @shelter.save
  # end
  # 2.times do
  #   @shelter.animals.new(
  #   name: Faker::FunnyName.two_word_name,
  #   species: "Dog",
  #   breed: Faker::Creature::Dog.breed,
  #   sex: "Male",
  #   age: rand(14),
  #   status: "reserved",
  #   shelter_id: nil)
  #   @shelter.save
  # end
