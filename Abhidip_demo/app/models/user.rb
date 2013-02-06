class User < ActiveRecord::Base
  has_many :posts,:dependent => :destroy
  attr_accessible :user_name, :email, :roll, :age, :dept,:contact_no
  validates  :email, :presence => true
  
  validates :email,:uniqueness => true
  validates_format_of :email, :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+.[A-Za-z]+\z/i
  before_create do |user|
  user.user_name = user.user_name.capitalize
  end
  before_update do |user|
  user.user_name = user.user_name.capitalize
  end
  
  before_validation :ensure_login_has_a_value
 
  protected
  def ensure_login_has_a_value
    if user_name.nil?
      self.user_name = email unless email.nil?
    end
  end
  
    
end
