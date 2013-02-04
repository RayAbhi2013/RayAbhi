class Post < ActiveRecord::Base
  attr_accessible :title, :description
  validates_length_of :description,:minimum => 50  
  belongs_to :user
end
