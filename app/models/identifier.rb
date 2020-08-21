class Identifier < ApplicationRecord
  belongs_to :identifiable, polymorphic: true
end
