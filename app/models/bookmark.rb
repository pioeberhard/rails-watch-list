class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :movie, :list, presence: true
  validates :movie, uniqueness: { scope: :list }
  validates :comment, length: { minimun: 6, maximum: 120 }
end
