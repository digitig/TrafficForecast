class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.text :alpha3, limit:3, null:false
      t.text :alpha2, limit:2
      t.text :iso_name, limit:75, null:false
      t.text :srs_name, limit:75
      t.text :global_region, limit:25
      t.text :european_route_markets, limit:25
      t.boolean :eu_member
      t.boolean :oecd_member
      t.boolean :un_member
      t.text :economy, limit:10

      t.timestamps
    end
  end
end
