class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :email, :password, :password_confirmation

  validates_uniqueness_of :email

  has_many :topics, :dependent => :destroy
end
