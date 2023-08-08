class CreateSeasons < ActiveRecord::Migration[7.0]
  def change
    create_table :seasons do |t|
      t.string :title, null: false
      t.text :plot
      t.integer :number, null: false
      t.references :purchase_option, foreign_key: true

      t.timestamps
    end
  end
end
