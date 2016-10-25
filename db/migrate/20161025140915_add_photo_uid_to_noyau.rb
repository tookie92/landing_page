class AddPhotoUidToNoyau < ActiveRecord::Migration
  def change
    add_column :noyaus, :photo_uid, :string
  end
end
