class Post < ApplicationRecord

  validates :title, presence: true,
                    length: {minimum: 5}
  #minimum 5 characters

  belongs_to :user
  has_many :favorites
  has_many :favorited_by, through: :favorites, source: :favorited, source_type: 'User'
end
