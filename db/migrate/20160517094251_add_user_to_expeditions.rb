class AddUserToExpeditions < ActiveRecord::Migration
  def change
    add_reference :expeditions, :user, index: true, foreign_key: true
  end
end
