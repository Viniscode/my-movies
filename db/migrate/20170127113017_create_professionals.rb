class CreateProfessionals < ActiveRecord::Migration
  def change
    create_table :professionals do |t|
      t.string :name
      t.datetime :birthdate
      t.string :gender
      t.string :country
      t.string  :type

      t.timestamps null: false
    end
  end
end
