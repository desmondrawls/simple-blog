class Post < ActiveRecord::Base
  belongs_to :user
  attr_accessible :content, :title
  has_many :comments
end
