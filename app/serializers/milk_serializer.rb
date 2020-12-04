class MilkSerializer < ActiveModel::Serializer
  attributes :id, :name, :price
  has_many :reviews
  has_many :purchasedLogs
end
