class User < ApplicationRecord
    has_many :reviews
    has_many :purchasedLogs
    has_many :likes
end
