class PurchaseOption < ApplicationRecord
    belongs_to :purchaseable, polymorphic: true
end
