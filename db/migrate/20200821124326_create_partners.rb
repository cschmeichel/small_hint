class CreatePartners < ActiveRecord::Migration[5.2]
  def change
    create_table :partners do |t|
      t.string :type, index: true
      t.string :name

      t.timestamps
    end
  end
end
