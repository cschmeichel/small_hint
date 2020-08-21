class CreatePartnerIntegrations < ActiveRecord::Migration[5.2]
  def change
    create_table :partner_integrations do |t|
      t.references :practice
      t.references :partner

      t.timestamps
    end
  end
end
