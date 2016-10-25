class AddPhotoNameToNoyau < ActiveRecord::Migration
  def change
    add_column :noyaus, :photo_name, :string
  end
end
