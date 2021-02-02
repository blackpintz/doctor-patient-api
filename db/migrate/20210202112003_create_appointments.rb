class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :physician, null: false, foreign_key: true
      t.string :city
      t.date :date
      t.timestamps
    end
  end
end
