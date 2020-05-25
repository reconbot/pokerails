class User < ApplicationRecord
  has_many :capture
  has_many :pokemon, through: :capture
end
