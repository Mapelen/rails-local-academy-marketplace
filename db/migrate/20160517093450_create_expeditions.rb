class CreateExpeditions < ActiveRecord::Migration
  def change
    create_table :expeditions do |t|
      t.date :starts_on
      t.date :ends_on
      t.text :description
      t.integer :capacity
      t.string :theme
      t.string :picture_url
      t.string :title
      t.references :destination, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
