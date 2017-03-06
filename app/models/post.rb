class Post < ApplicationRecord

  has_many :comments
  validates_presence_of :body, :title

  # accepts_nested_attributes_for :comments

end
