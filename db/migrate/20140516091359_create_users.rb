class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :name, null: false
      t.boolean :admin
      t.string :password_digest, null: false

      t.timestamps
    end
  end
end
