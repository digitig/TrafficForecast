class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.text :name, null: false
      t.text :client
      t.belongs_to :airport, index: true

      t.timestamps
    end
  end
end
