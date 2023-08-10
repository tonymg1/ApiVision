class CreateLibraries < ActiveRecord::Migration[7.0]
  def change
    create_table :libraries do |t|
      t.references :user, foreign_key: true
      t.references :purchase_option, foreign_key: true 
      t.integer :remaining_time

      t.timestamps
    end
  end
end
