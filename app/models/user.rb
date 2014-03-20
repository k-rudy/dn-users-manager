class User < ActiveRecord::Base
  belongs_to :role
  has_and_belongs_to_many :permissions
  
  validates :name, presence: true
  
  # Returns combined permissions from user and role
  #
  # @return [ Relation ] all permissions
  def all_permissions
    return permissions unless role
    (permissions + role.permissions).uniq
  end
end
