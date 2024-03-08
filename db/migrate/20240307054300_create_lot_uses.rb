class CreateLotUses < ActiveRecord::Migration[7.1]
  def change
    create_table :lot_uses do |t|
      t.string :use_type, index: true
      t.string :description
      t.string :tax_code, index: true
      t.string :unit_of_measure, index: true # acres, miles, feet, etc.
      t.decimal :tax_rate, index: true # 5%, 0.5%, etc.
      t.timestamps
    end
  end
end
