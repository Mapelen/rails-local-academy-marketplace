class RenamePictureToPhotoInUser < ActiveRecord::Migration
  def change
    rename_column :users, :picture, :photo
  end
end
