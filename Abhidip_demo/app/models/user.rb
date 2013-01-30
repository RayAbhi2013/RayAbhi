class User < ActiveRecord::Base
  attr_accessible :name, :email, :roll, :age, :dept,:contact_no
  validates :name, :email, :presence => true
  validates_length_of :name,:email, :minimum => 2
  
 # before_create :record_signup

  #public
   # def name_capitalize
    #  :name.capitalize
    #end
end
