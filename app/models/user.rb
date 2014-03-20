class User < ActiveRecord::Base
  belongs_to :role
  has_and_belongs_to_many :permissions
end
