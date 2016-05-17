class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :name
      t.text :description
      t.string :picture_url

      t.timestamps null: false
    end
  end
end
