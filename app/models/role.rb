class Role < ActiveRecord::Base
  has_many :users
  has_and_belongs_to_many :permissions
  
  scope :starting_with, ->(query){ where("name like ?", "#{query}%") }
end
