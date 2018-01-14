class Post < ApplicationRecord
  belongs_to :user
  has_many :role
  mount_uploader :picture, ImageUploader
end
