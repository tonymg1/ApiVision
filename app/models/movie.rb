class Movie < ApplicationRecord
    belongs_to :purchase_option
    has_one :purchase_options, as: :purchasable
end
  