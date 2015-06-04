class Post < ActiveRecord::Base
  has_many :comments

  validates :author, presence: true
  validates :description, presence: true
  def comment_desc
    return 'No post comments' if comments.none?
  end
end
