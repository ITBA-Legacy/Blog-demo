class Comment < ActiveRecord::Base
  attr_accessible :body, :post_id
  validates_presence_of :body, :post_id
  
  belongs_to :post
end