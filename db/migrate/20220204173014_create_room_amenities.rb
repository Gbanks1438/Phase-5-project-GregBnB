class CreateRoomAmenities < ActiveRecord::Migration[6.1]
  def change
    create_table :room_amenities do |t|
      t.belongs_to :room, null: false, foreign_key: true
      t.belongs_to :amenity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
