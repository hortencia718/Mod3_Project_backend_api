class FlavorSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :image, :like
  has_many :reviews
  has_many :purchasedLogs
end
