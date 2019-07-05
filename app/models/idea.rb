# frozen_string_literal: true

class Idea < ApplicationRecord
  mount_uploader :picture, PictureUploader
  has_many :comments, dependent: :destroy

  validates :name, :description, :picture, presence: true
end
