class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.integer :room_num
      t.integer :floor_num
      t.integer :num_of_beds
      t.string :bed_size
      t.string :img_url
      t.string :room_type
      t.string :location
      t.belongs_to :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
