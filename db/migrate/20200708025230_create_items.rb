class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :text
      t.integer :price
      t.integer :category_id, foreign_key: true
      t.string :condition
      t.string :postage_payer
      t.integer :prefecture
      t.string :standby_day
      t.string :trading_status
      t.references :seller, null: false, foreign_key: { to_table: :users }
      t.references :buyer, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
