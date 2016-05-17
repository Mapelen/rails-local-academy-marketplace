class AddAirportToDestinations < ActiveRecord::Migration
  def change
    add_column :destinations, :airport, :string
  end
end
