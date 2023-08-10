class Movie < ApplicationRecord
    has_many :purchase_options, as: :purchasable
end
 