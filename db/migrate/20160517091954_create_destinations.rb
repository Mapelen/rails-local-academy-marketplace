class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :description
      t.string :picture_url
      t.string :airport
      t.string :geolocation

      t.timestamps null: false
    end
  end
end
