FactoryBot.define do
  factory :applicant do
    email { Faker::Internet.email }
    name { Faker::Name.name }
    phone { Faker::PhoneNumber.cell_phone }
  end
end