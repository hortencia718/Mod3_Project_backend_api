class PurchasedLogSerializer < ActiveModel::Serializer
  attributes :id, :price
  # has_one :user
  # has_one :flavor
  # has_one :topping
  # has_one :milk
  # has_one :scoop
end
