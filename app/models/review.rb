class Review < ApplicationRecord
  belongs_to :user
  belongs_to :flavor
  belongs_to :topping
  belongs_to :milk
  belongs_to :scoop
end
