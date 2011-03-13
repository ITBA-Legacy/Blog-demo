class Post < ActiveRecord::Base
  attr_accessible :title, :body
  validates_presence_of :title, :body
  
  has_many :comments, :dependent => :destroy
end