class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.text :plot
      t.references :purchase_option, foreign_key: true

      t.timestamps
    end
  end
end
