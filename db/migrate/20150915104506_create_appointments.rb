class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :date_of_appointment
      t.string :pet
      t.string :customer
      t.string :pet_type
      t.string :breed
      t.integer :age
      t.float :weight
      t.boolean :require_remainder_of_appointment
      t.text :reason_for_visit
      t.integer :doctor_id

      t.timestamps null: false
    end
  end
end
