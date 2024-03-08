FactoryBot.define do
  factory :lot do
    address { Faker::Address.street_address }
    city { Faker::Address.city }
    state { Faker::Address.state_abbr }
    zip { Faker::Address.zip_code }
    latitude { Faker::Address.latitude }
    longitude { Faker::Address.longitude }
    width { Faker::Number.decimal(l_digits: 2, r_digits: 2) }
    height { Faker::Number.decimal(l_digits: 2, r_digits: 2) }
    unit_of_measure { ApplicationRecord::VALID_UNITS_OF_MEASURE.sample }
  end

  factory :realistic_lot, class: Lot do
    width { 125 }
    height { 233 }
    unit_of_measure { 'acres' }
  end
end