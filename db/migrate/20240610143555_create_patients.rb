class CreatePatients < ActiveRecord::Migration[7.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :owner
      t.string :description
      t.string :phone
      t.string :breed
      t.string :age
      t.string :specie
      t.string :gender
      t.string :history
      t.string :email

      t.timestamps
    end
  end
end
