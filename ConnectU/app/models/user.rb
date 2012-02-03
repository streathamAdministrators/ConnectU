class User < ActiveRecord::Base
  attr_accessible :nom, :prenom, :mail, :password, :password_confirmation
  has_secure_password
  validates_presence_of :password, :on => :create
  
  has_one :user_information, :dependent => :destroy
  has_many :statuts
  accepts_nested_attributes_for :user_information
end
