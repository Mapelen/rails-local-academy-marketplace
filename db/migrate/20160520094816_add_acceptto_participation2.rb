class AddAccepttoParticipation2 < ActiveRecord::Migration
  def change
    change_column :participations, :accepted, 'boolean USING CAST(accepted AS boolean)'
  end
end
