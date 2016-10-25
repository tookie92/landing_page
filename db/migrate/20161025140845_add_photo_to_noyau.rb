class AddPhotoToNoyau < ActiveRecord::Migration
  def change
    add_column :noyaus, :photo, :string
  end
end
