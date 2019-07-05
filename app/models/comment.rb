# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :idea

  validates :user_name, :body, presence: true
end
