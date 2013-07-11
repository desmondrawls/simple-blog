class Comment < ActiveRecord::Base
  attr_accessible :author_name :discussion, :post_id

  belongs_to :post
end
