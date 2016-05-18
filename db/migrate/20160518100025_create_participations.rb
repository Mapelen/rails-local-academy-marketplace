class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.references :user, index: true, foreign_key: true
      t.references :expedition, index: true, foreign_key: true
      t.boolean :is_company

      t.timestamps null: false
    end
  end
end
