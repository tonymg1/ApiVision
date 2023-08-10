class CreateEpisodes < ActiveRecord::Migration[7.0]
  def change
    create_table :episodes do |t|

      t.timestamps
    end
  end
end
