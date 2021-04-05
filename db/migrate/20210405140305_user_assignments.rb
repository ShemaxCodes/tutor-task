class UserAssignments < ActiveRecord::Migration[6.1]
  def change
    create_table :userassignments do |t|
      t.belongs_to :users 
      t.belongs_to :assignments
    end 
  end
end
