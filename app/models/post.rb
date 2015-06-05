class Post < ActiveRecord::Base
  has_many :comments

  validates :author, presence: true
  validates :description, presence: true

end
