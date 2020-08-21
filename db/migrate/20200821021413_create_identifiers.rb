class CreateIdentifiers < ActiveRecord::Migration[5.2]
  def change
    create_table :identifiers do |t|
      t.references :identifiable, polymorphic: true, index: true
      t.string :identifiable_id
      t.string :identifiable_type

      t.timestamps
    end
  end
end
