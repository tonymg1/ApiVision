class CreatePurchaseOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :purchase_options do |t|
      t.float :purchase_price, default: 2.99
      t.string :video_quality
      t.references :purchaseable, polymorphic: true, null: false

      t.timestamps
    end

    add_index :purchase_options, [:purchasable_type, :purchasable_id]
  end
end
