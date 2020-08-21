class Partner < ApplicationRecord
  has_many :partner_integrations
  has_many :practices, through: :partner_integrations

  def some_method
    # no op... only sub_classes uses this method
  end
end
