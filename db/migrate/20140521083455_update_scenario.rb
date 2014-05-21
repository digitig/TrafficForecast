class UpdateScenario < ActiveRecord::Migration
  def up
    add_column :scenarios, :el_dom_developing, :float, null: false, :default => DEFAULT_EL_DOM_DEVELOPING
    add_column :scenarios, :el_dom_transitional, :float, null: false, :default => DEFAULT_EL_DOM_TRANSITIONAL
    add_column :scenarios, :el_short_transitional, :float, null: false, :default => DEFAULT_EL_SHORT_TRANSITIONAL
    add_column :scenarios, :el_medium_transitional, :float, null: false, :default => DEFAULT_EL_MEDIUM_TRANSITIONAL
    add_column :scenarios, :el_long_transitional, :float, null: false, :default => DEFAULT_EL_LONG_TRANSITIONAL
    add_column :scenarios, :el_ultra_transitional, :float, null: false, :default => DEFAULT_EL_ULTRA_TRANSITIONAL
    add_column :scenarios, :sat_dom_developing, :integer, null: false, precision: 4,:default => DEFAULT_SAT_DOM_DEVELOPING
    add_column :scenarios, :sat_dom_transitional, :integer, null: false, precision: 4,:default => DEFAULT_SAT_DOM_TRANSITIONAL
    add_column :scenarios, :sat_short_transitional, :integer, null: false, precision: 4, :default => DEFAULT_SAT_SHORT_TRANSITIONAL
    add_column :scenarios, :sat_medium_transitional, :integer, null: false, precision: 4, :default => DEFAULT_SAT_MEDIUM_TRANSITIONAL
    add_column :scenarios, :sat_long_transitional, :integer, null: false, precision: 4, :default => DEFAULT_SAT_LONG_TRANSITIONAL
    add_column :scenarios, :sat_ultra_transitional, :integer, null: false, precision: 4, :default => DEFAULT_SAT_ULTRA_TRANSITIONAL
    change_column :scenarios, :el_dom_developed, :float, :default => DEFAULT_EL_DOM_DEVELOPED
    change_column :scenarios, :el_short_developed, :float, :default => DEFAULT_EL_SHORT_DEVELOPED
    change_column :scenarios, :el_short_developing, :float, :default => DEFAULT_EL_SHORT_DEVELOPING
    change_column :scenarios, :el_medium_developed, :float, :default => DEFAULT_EL_MEDIUM_DEVELOPED
    change_column :scenarios, :el_medium_developing, :float, :default => DEFAULT_EL_MEDIUM_DEVELOPING
    change_column :scenarios, :el_long_developed, :float, :default => DEFAULT_EL_LONG_DEVELOPED
    change_column :scenarios, :el_long_developing, :float, :default => DEFAULT_EL_LONG_DEVELOPING
    change_column :scenarios, :el_ultra_developed, :float, :default => DEFAULT_EL_ULTRA_DEVELOPED
    change_column :scenarios, :el_ultra_developing, :float, :default => DEFAULT_EL_ULTRA_DEVELOPING
    change_column :scenarios, :sat_dom_developed, :integer, :default => DEFAULT_SAT_DOM_DEVELOPED
    change_column :scenarios, :sat_short_developed, :integer, :default => DEFAULT_SAT_SHORT_DEVELOPED
    change_column :scenarios, :sat_medium_developed, :integer, :default => DEFAULT_SAT_MEDIUM_DEVELOPED
    change_column :scenarios, :sat_long_developed, :integer, :default => DEFAULT_SAT_LONG_DEVELOPED
    change_column :scenarios, :sat_ultra_developed, :integer, :default => DEFAULT_SAT_ULTRA_DEVELOPED
    change_column :scenarios, :sat_short_developing, :integer, :default => DEFAULT_SAT_SHORT_DEVELOPING
    change_column :scenarios, :sat_medium_developing, :integer, :default => DEFAULT_SAT_MEDIUM_DEVELOPING
    change_column :scenarios, :sat_long_developing, :integer, :default => DEFAULT_SAT_LONG_DEVELOPING
    change_column :scenarios, :sat_ultra_developing, :integer, :default => DEFAULT_SAT_ULTRA_DEVELOPING
  end
  def down
    # Can only partyly reverse migration -- ignores the defaults.
    remove_column :scenarios, :el_dom_developing
    remove_column :scenarios, :el_dom_transitional
    remove_column :scenarios, :el_short_transitional
    remove_column :scenarios, :el_medium_transitional
    remove_column :scenarios, :el_long_transitional
    remove_column :scenarios, :el_ultra_transitional
    remove_column :scenarios, :sat_dom_developing
    remove_column :scenarios, :sat_dom_transitional
    remove_column :scenarios, :sat_short_transitional
    remove_column :scenarios, :sat_medium_transitional
    remove_column :scenarios, :sat_long_transitional
    remove_column :scenarios, :sat_ultra_transitional
  end
end
