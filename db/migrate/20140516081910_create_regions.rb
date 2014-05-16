class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.text :region_code, limit: 3, null: false
      t.text :name, limit: 25, null: false
      t.belongs_to :country, index: true

      t.timestamps
    end
  end
end
