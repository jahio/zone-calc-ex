class CreateApplicants < ActiveRecord::Migration[7.1]
  def change
    create_table :applicants do |t|
      t.string :email, index: true
      t.string :name, index: true
      t.string :phone, index: true
      t.timestamps
    end
  end
end
