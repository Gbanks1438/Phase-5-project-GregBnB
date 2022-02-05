class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.integer :num_guests
      t.datetime :start_date
      t.datetime :end_date
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
