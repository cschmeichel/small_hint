class AddPartnerIntegrationReferenceToPartner < ActiveRecord::Migration[5.2]
  def change
    add_reference :partners, :partner_integrations
  end
end
