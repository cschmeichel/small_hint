class PartnerIntegration < ApplicationRecord
  belongs_to :practice
  belongs_to :partner

  # some after commit logic here to create hooks and send to ActiveJob
end
