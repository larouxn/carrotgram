class Idea < ApplicationRecord
  mount_uploader :picture, PictureUploader
  has_many :comments

  validates :name, :description, :picture, presence: true
end
