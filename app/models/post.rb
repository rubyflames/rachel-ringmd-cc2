class Post < ApplicationRecord

  validates :title, presence: true,
                    length: {minimum: 5}
  #minimum 5 characters

  include PgSearch

  belongs_to :user
  has_many :favorites
  has_many :favorited_by, through: :favorites, source: :favorited, source_type: 'User'

  pg_search_scope :search_by_post_content, :against => [:title, :body], :associated_against => {
    :users => :email
  }, :using => {
    :tsearch => {:prefix => true}
  }

end
