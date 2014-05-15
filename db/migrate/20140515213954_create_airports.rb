class CreateAirports < ActiveRecord::Migration
  def change
    create_table :airports do |t|
      t.text :code, limit: 3, null: false
      t.text :name, limit: 75, null: false
      t.text :city, limit: 50, null: false
      t.text :state, limit: 3
      t.float :latitude, precision: 5, scale: 2
      t.float :longitude, precision: 5, scale: 2
      t.integer :wac
      t.text :notes
      t.belongs_to :country, index: true

      t.timestamps
    end
  end
end
