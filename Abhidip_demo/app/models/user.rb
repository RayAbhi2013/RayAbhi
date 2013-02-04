class User < ActiveRecord::Base
  has_many :posts
  attr_accessible :name, :email, :roll, :age, :dept,:contact_no
  validates  :email, :presence => true
  
  validates :email,:uniqueness => true
  validates_format_of :email, :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+.[A-Za-z]+\z/i
 

  before_validation :ensure_name_has_value
 
  protected
  def ensure_name_has_value
    if name.nil?
      name = email unless email.blank?
    end
 end
    
end
