class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :category
      t.string :url
      t.string :location
      t.belongs_to :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
