class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.string :name
      t.text :description
      t.references :project, index: true, null: false, foreign_key: true

      t.timestamps
    end
  end
end
