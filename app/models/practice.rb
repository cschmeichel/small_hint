class Practice < ApplicationRecord
  include Identifiable

  has_many :doctors
  has_many :patients
  has_many :partner_integrations
  has_many :partners, through: :partner_integrations

  validates_uniqueness_of :name, case_sensitive: false

end
