class CreatePermissionJointTables < ActiveRecord::Migration
  def change
    create_table :permissions_roles do |t|
      t.references :role
      t.references :permission
    end
    
    create_table :permissions_users do |t|
      t.references :user
      t.references :permission
    end

    add_index :permissions_roles, [ :role_id, :permission_id ]
    add_index :permissions_users, [ :user_id, :permission_id ]
  end
end
