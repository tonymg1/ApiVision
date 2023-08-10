class CreatePurchaseOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :purchase_options do |t|

      t.timestamps
    end
  end
end
