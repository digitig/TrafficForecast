class CreateScenarios < ActiveRecord::Migration
  def change
    create_table :scenarios do |t|
      t.text :name, null: false
      t.integer :base_year, null: false
      t.float :dom_on_dom, null: false
      t.float :dom_on_int, null: false
      t.float :min_r2, null: false, scale: 2
      t.float :el_dom_developed, null: false
      t.float :el_short_developed, null: false
      t.float :el_medium_developed, null: false
      t.float :el_long_developed, null: false
      t.float :el_ultra_developed, null: false
      t.float :el_short_developing, null: false
      t.float :el_medium_developing, null: false
      t.float :el_long_developing, null: false
      t.float :el_ultra_developing, null: false
      t.integer :sat_dom_developed, null: false, precision: 4
      t.integer :sat_short_developed, null: false, precision: 4
      t.integer :sat_medium_developed, null: false, precision: 4
      t.integer :sat_long_developed, null: false, precision: 4
      t.integer :sat_ultra_developed, null: false, precision: 4
      t.integer :sat_short_developing, null: false, precision: 4
      t.integer :sat_medium_developing, null: false, precision: 4
      t.integer :sat_long_developing, null: false, precision: 4
      t.integer :sat_ultra_developing, null: false, precision: 4
      t.float :optimal_load_factor
      t.belongs_to :project, index: true

      t.timestamps
    end
  end
end
