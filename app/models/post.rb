class Post < ApplicationRecord

  validates :title, presence: true,
                    length: {minimum: 5}
#minimum 5 characters
end
