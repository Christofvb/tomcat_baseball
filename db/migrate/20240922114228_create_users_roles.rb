class CreateUsersRoles < ActiveRecord::Migration[7.2]
  def change
    create_table :roles_users, id: false do |t|
      t.references :user, null: false, foreign_key: true
      t.references :role, null: false, foreign_key: true
    end
    add_index :roles_users, [ :user_id, :role_id ], unique: true
  end
end
