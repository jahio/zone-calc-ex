require 'securerandom'

FactoryBot.define do
  factory :lot_use do
    use_type { SecureRandom.hex(5) }
    description { SecureRandom.hex(32) }
    tax_code { SecureRandom.hex(1) }
    unit_of_measure { ApplicationRecord::VALID_UNITS_OF_MEASURE.sample }
    tax_rate { rand(0.0001..0.9) }
  end
end