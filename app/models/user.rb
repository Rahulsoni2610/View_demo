class User < ApplicationRecord
  has_one_attached :image
  has_many :books
  accepts_nested_attributes_for :books

end
