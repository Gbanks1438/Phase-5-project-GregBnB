class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :address
      t.string :img_url
      t.string :has_cell_reception

      t.timestamps
    end
  end
end
