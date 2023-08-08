class CreateEpisodes < ActiveRecord::Migration[7.0]
  def change
    create_table :episodes do |t|
      t.integer :episode_number, null: false
      t.references :season, foreign_key: true

      t.timestamps
    end
  end
end
