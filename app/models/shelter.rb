class Shelter < ApplicationRecord
  has_many :reviews, dependent: :destroy
end
