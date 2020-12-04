class Flavor < ApplicationRecord
    has_many :reviews
    has_many :purchasedLogs

    default_scope { order('created_at ASC') }

end
