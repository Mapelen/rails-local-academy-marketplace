class RenamePictureUrlToPhotoInExpedition < ActiveRecord::Migration
  def change
    rename_column :expeditions, :picture_url, :photo
  end
end
