class ScoopSerializer < ActiveModel::Serializer
  attributes :id, :number, :price
  has_many :reviews
  has_many :purchasedLogs

end
