class CreateLots < ActiveRecord::Migration[7.1]
  def change
    create_table :lots do |t|
      t.string :address, index: true
      t.string :city, index: true
      t.string :state, index: true
      t.string :zip, index: true
      t.decimal :latitude, index: true
      t.decimal :longitude, index: true
      t.decimal :width, index: true, null: false
      t.decimal :height, index: true, null: false
      t.string :unit_of_measure, index: true, null: false # acres, miles, feet, etc.
      t.timestamps
    end

    # This is to ensure that we don't have duplicate coordinates
    add_index :lots, [:latitude, :longitude], unique: true 
    add_index :lots, [:address, :city, :state, :zip, :latitude, :longitude], unique: true
  end
end
