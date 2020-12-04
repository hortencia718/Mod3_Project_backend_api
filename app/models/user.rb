class User < ApplicationRecord
    has_many :reviews
    has_many :purchasedLogs
end
