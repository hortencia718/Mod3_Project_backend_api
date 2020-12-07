class FlavorSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :image
  has_many :likes
  has_many :reviews
  has_many :purchasedLogs
end
