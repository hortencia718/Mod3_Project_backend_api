class Flavor < ApplicationRecord
    has_many :reviews
    has_many :purchasedLogs
    has_many :likes

    default_scope { order('created_at ASC') }

end
