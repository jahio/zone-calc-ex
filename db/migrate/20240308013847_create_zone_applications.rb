class CreateZoneApplications < ActiveRecord::Migration[7.1]
  def change
    create_table :zone_applications do |t|
      t.belongs_to :applicant, null: false, index: true
      t.belongs_to :lot, null: false, index: true
      t.belongs_to :lot_use, null: false, index: true
      t.datetime :submitted_at, index: true
      t.datetime :approved_at, index: true
      t.text :notes
      t.jsonb :metadata, null: true, index: false
      t.timestamps
    end
    add_index :zone_applications, [:applicant_id, :lot_id, :lot_use_id], unique: true
    add_index :zone_applications, :metadata, using: :gin
  end
end
