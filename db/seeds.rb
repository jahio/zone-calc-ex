# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

unless Rails.env.production? # We only seed in dev/test/preview/staging/preprod to demo
  require 'factory_bot_rails'

  # Create some lot uses
  lot_uses = [
    { use_type: 'Residential', description: 'A place to live', tax_code: 'R', unit_of_measure: 'acres', tax_rate: 0.05 },
    { use_type: 'Commercial', description: 'A place to work', tax_code: 'C', unit_of_measure: 'hectares', tax_rate: 0.1 },
    { use_type: 'Industrial', description: 'A place to manufacture', tax_code: 'I', unit_of_measure: 'kilometers', tax_rate: 0.15 },
    { use_type: 'Agricultural', description: 'A place to farm', tax_code: 'A', unit_of_measure: 'miles', tax_rate: 0.025 },
    { use_type: 'Recreational', description: 'A place to play', tax_code: 'R', unit_of_measure: 'feet', tax_rate: 0.05 },
    { use_type: 'Public', description: 'A place for public use', tax_code: 'P', unit_of_measure: 'yards', tax_rate: 0.0 }
  ]

  lot_uses.each do |lot_use|
    LotUse.find_or_create_by!(lot_use)
  end

  # Create some lots
  lots = [
    { address: '123 Main St', city: 'Anytown', state: 'NY', zip: '12345', latitude: 41.12345, longitude: -78.12345, width: 100, height: 100, unit_of_measure: 'acres' },
    { address: '456 Elm St', city: 'Anytown', state: 'NY', zip: '12345', latitude: 42.12345, longitude: -77.12345, width: 1100, height: 2100, unit_of_measure: 'yards' },
    { address: '789 Oak St', city: 'Anytown', state: 'NY', zip: '12345', latitude: 43.12345, longitude: -76.12345, width: 11100, height: 2250, unit_of_measure: 'feet' },
    { address: '1011 Pine St', city: 'Anytown', state: 'NY', zip: '12345', latitude: 44.12345, longitude: -75.12345, width: 33.2, height: 12.333, unit_of_measure: 'kilometers' },
    { address: '1213 Maple St', city: 'Anytown', state: 'NY', zip: '12345', latitude: 45.12345, longitude: -74.12345, width: 223.7, height: 973, unit_of_measure: 'hectares' }
  ]

  lots.each do |lot|
    Lot.find_or_create_by!(lot)
  end
end