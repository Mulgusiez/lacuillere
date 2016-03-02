require 'faker'

Restaurant.destroy_all
10.times do
    Restaurant.create!(
    {
      name:         Faker::Lorem.word,
      address:      Faker::Address.street_address,
      phone_number: Faker::PhoneNumber.phone_number,
      category:     ["chinese", "italian", "japanese", "french", "belgian"][rand(4)]
      })
end
