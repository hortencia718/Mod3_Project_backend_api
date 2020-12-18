class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :likes
  # has_many :likes
  has_many :reviews
  has_many :purchasedLogs
end
