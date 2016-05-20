class AddBioAndCompanyInUser < ActiveRecord::Migration
  def change
    add_column :users, :bio, :text
    add_column :users, :company, :string
  end
end
