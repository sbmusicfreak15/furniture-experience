class Comment < ApplicationRecord
  validates :body, presence: true
  validates :user, presence: true
  validates :product, presence: true
  validates :rating, numericality: { only_integer: true }
  after_create_commit { CommentUpdateJob.perform_later(self, self.user) }
  belongs_to :user
  scope :rating_desc, -> { order(rating: :desc) }
  belongs_to :product
  scope :rating_desc, -> { order(rating: :desc) }

end
