class CreateExpeditions < ActiveRecord::Migration
  def change
    create_table :expeditions do |t|
      t.string :title
      t.string :description
      t.string :picture_url
      t.string :theme
      t.integer :capacity
      t.datetime :start_date
      t.datetime :end_date
      t.references :user, index: true, foreign_key: true
      t.references :destination, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
