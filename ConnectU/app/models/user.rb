class User < ActiveRecord::Base
  has_one :user_information, :dependent => :destroy
  accepts_nested_attributes_for :user_information
end
