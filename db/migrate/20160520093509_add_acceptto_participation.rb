class AddAccepttoParticipation < ActiveRecord::Migration
  def change
    add_column :participations, :accepted, :string
  end
end
