class CreateRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :roles do |t|
      t.references :user, null: false, index: true, foreign_key: true
      t.string :role
      t.references :project, null: false, index: true, foreign_key: true

      t.timestamps null:false
    end
  end
end
