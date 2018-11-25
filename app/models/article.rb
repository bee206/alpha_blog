class Article < ApplicationRecord

  belongs_to :user

  validates :title, presence: true, length: { minimum: 10, maximum: 200 }
  validates :description, presence: true, length: { minimum: 100 }
  validates :user_id, presence: true
end
