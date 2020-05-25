class Pokemon < ApplicationRecord
  has_many :capture
  has_many :trainers, through: :capture, source: :user
end
