class Library < ApplicationRecord
    belongs_to :user
    belongs_to :purchase_option
    has_many :contents, through: :purchases, source: :purchasable
end
 