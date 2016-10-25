class CreateNoyaus < ActiveRecord::Migration
  def change
    create_table :noyaus do |t|
      t.string :role
      t.string :nom
      t.string :prenom
      t.string :parole

      t.timestamps null: false
    end
  end
end
