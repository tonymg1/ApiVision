class PurchaseOption < ApplicationRecord
    belongs_to :purchasable, polymorphic: true
    has_many :libraries
end
