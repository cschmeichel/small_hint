class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.references :practice, foreign_key: true
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
