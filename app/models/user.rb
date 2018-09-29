class User < ApplicationRecord
  validates :name, {presence: true}
  #空の値不可、重複不可
  validates :email, {presence: true, uniqueness:true}
end
