class Information < ActiveRecord::Base
  belongs_to :user
  accepts_nested_attributes_for :information
end
